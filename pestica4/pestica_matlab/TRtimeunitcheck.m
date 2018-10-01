function [TRsec TRms] = TRtimeunitcheck(TR,cutoffsec)

if ~exist('cutoffsec')
  cutoffsec = 30; % TR seconds should be less than 30s
end

if max(TR) < cutoffsec 
  TRsec = TR; TRms = TR*1000;
else
  TRsec = 1000*TR; TRms = TR;
end