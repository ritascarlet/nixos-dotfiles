######################
### INTEL SETTINGS ###
######################
{ config, lib, pkgs, inputs, ... }: { 

	environment.systemPackages = with pkgs; [ 
		microcode-intel
		inteltool
		intel-ocl
		intelmetool
	];

	hardware.cpu.intel.updateMicrocode = true;
}

