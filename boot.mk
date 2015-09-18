INTERNAL_MTK_BOOTIMAGE_ARGS := \
	--no-compress \
	--overwrite \
	--kernel $(INSTALLED_KERNEL_TARGET) \
	--ramdisk $(INSTALLED_RAMDISK_TARGET) \
	--config $(DEVICE_FOLDER)/image.cfg

$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG)\
	                $(INSTALLED_RAMDISK_TARGET) $(INSTALLED_KERNEL_TARGET)
	$(call pretty,"Target boot image: $@")
	$(MKBOOTIMG) repack $@ $(INTERNAL_MTK_BOOTIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS)
	$(hide) $(call assert-max-image-size,$@, \
		$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made boot image: $@"${CL_RST}

INTERNAL_MTK_RECOVERYIMAGE_ARGS := \
	--no-compress \
	--overwrite \
	--kernel $(INSTALLED_KERNEL_TARGET) \
	--ramdisk $(recovery_ramdisk) \
	--config $(DEVICE_FOLDER)/image-recovery.cfg

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
	$(recovery_ramdisk) $(INSTALLED_KERNEL_TARGET)
	@echo -e ${CL_CYN}"----- Making recovery image ------"${CL_RST}
	$(MKBOOTIMG) repack $@ $(INTERNAL_MTK_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS)
	$(hide) $(call assert-max-image-size,$@, \
		$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made recovery image: $@"${CL_RST}
