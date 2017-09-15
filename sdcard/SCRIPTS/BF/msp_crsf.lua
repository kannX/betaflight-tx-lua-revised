MSP_VERSION=bit32.lshift(1,5)MSP_STARTFLAG=bit32.lshift(1,4)CRSF_ADDRESS_BETAFLIGHT=0xC8;CRSF_ADDRESS_RADIO_TRANSMITTER=0xEA;CRSF_FRAMETYPE_MSP_REQ=0x7A;CRSF_FRAMETYPE_MSP_RESP=0x7B;CRSF_FRAMETYPE_MSP_WRITE=0x7C;MSP_TX_PAYLOAD_SIZE=8;MSP_RX_PAYLOAD_SIZE=58;local a=0;local b=0;local c=0;local d={}local e={}local f=1;local g=0;local h=false;local i=0;mspRequestsSent=0;mspRepliesReceived=0;mspPkRxed=0;mspErrorPk=0;mspStartPk=0;mspOutOfOrder=0;mspCRCErrors=0;mspPendingRequest=false;local function j()mspRequestsSent=0;mspRepliesReceived=0;mspPkRxed=0;mspErrorPk=0;mspStartPk=0;mspOutOfOrderPk=0;mspCRCErrors=0 end;local k={}local l=1;local m=0;local n=0;local function o(p)local q={CRSF_ADDRESS_BETAFLIGHT,CRSF_ADDRESS_RADIO_TRANSMITTER}for r=1,#p do q[r+2]=p[r]end;crossfireTelemetryPush(c,q)n=n+1 end;function mspProcessTxQ()if#k==0 then return false end;if not crossfireTelemetryPush()then return true end;local p={}p[1]=a+MSP_VERSION;a=bit32.band(a+1,0x0F)if l==1 then p[1]=p[1]+MSP_STARTFLAG end;local r=2;while r<=MSP_TX_PAYLOAD_SIZE do if l>#k then break end;p[r]=k[l]l=l+1;m=bit32.bxor(m,p[r])r=r+1 end;if r<=MSP_TX_PAYLOAD_SIZE then p[r]=m;r=r+1;while r<=MSP_TX_PAYLOAD_SIZE do p[r]=0;r=r+1 end;o(p)k={}l=1;m=0;return false end;o(p)return true end;function mspReadPackage(s)c=CRSF_FRAMETYPE_MSP_REQ;return mspSendRequest(s,{})end;function mspWritePackage(s,p)c=CRSF_FRAMETYPE_MSP_WRITE;return mspSendRequest(s,p)end;function mspSendRequest(s,p)if#k~=0 or not s then return nil end;k[1]=#p;k[2]=bit32.band(s,0xFF)for r=1,#p do k[r+2]=bit32.band(p[r],0xFF)end;i=s;mspRequestsSent=mspRequestsSent+1;return mspProcessTxQ()end;local function t(p)mspPkRxed=mspPkRxed+1;local u=1;local v=p[u]local w=bit32.band(v,0x20)~=0;u=u+1;if w then h=false;mspErrorPk=mspErrorPk+1;return nil end;local x=bit32.band(v,0x10)~=0;local y=bit32.band(v,0x0F)if x then f=1;e={}mspRxSize=p[u]g=bit32.bxor(mspRxSize,i)u=u+1;h=true;mspStartPk=mspStartPk+1 elseif not h then mspOutOfOrder=mspOutOfOrder+1;return nil elseif bit32.band(b+1,0x0F)~=y then mspOutOfOrder=mspOutOfOrder+1;h=false;return nil end;while u<=MSP_RX_PAYLOAD_SIZE and f<=mspRxSize do e[f]=p[u]g=bit32.bxor(g,p[u])f=f+1;u=u+1 end;if u>MSP_RX_PAYLOAD_SIZE then b=y;return true end;if g~=p[u]then h=false;mspCRCErrors=mspCRCErrors+1;return nil end;mspRepliesReceived=mspRepliesReceived+1;h=false;return e end;function mspPollReply()while true do local z,A=crossfireTelemetryPop()if z==CRSF_FRAMETYPE_MSP_RESP then if A[1]==CRSF_ADDRESS_RADIO_TRANSMITTER and A[2]==CRSF_ADDRESS_BETAFLIGHT then local B={}for r=3,#A do B[r-2]=A[r]end;local C=t(B)if type(C)=="table"then return i,C end end else break end end;return nil end
