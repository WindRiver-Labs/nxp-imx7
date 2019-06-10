# As it can not overwrite the version in the layer meta-fsl-arm, we have to use
#   another file extension for new patch to the append in the meta-fsl-arm

# Append path for freescale layer to include alsa-state asound.conf
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_nxp-imx7 = " \
	file://asound.state \
        file://asound.conf \
"

PACKAGE_ARCH_nxp-imx7 = "${MACHINE_ARCH}"
