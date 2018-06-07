
%hook SBUIController

- (void)setIsConnectedToUnsupportedChargingAccessory:(id)arg1 {
	NO, arg1=nil;
}

- (bool)isConnectedToUnsupportedChargingAccessory:(unsigned int)arg1 {
	return NO, arg1=0;
}

- (bool)isConnectedToChargeIncapablePowerSource:(unsigned int)arg1 {
	return NO, arg1=0;
}

%end