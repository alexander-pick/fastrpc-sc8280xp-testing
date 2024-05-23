# FastRPC Lib and Daemon

This is a version of fastrpc I forked from codelinaro. I made it work with the CDSP of a SC8280xp/X13s for testing various hexagon calculation on device. It's ment to run on Debian Testing (Linux) using the recent jhovold defconfig. Furthermore this version of fastrpc is super verbose and will print a lot of status information. Since the public documentation of fastrpc is very incomplete I had to work out a lot of details.

While working on the project I had to fix numerous hardcoded values which default to adsp and other code to make it work properly on the device. The sc8280xp device treee currently lacks an adsp node for fastrpc, so default configs in this direction will simply fail. One of the biggest oddities was the unsigned domain config. I fixed `ADSP_PROCESS_ATTRS` for Linux, see `run.sh` for details.

This version also mainly works based on `/dsp` as it is easier to maintain for testing for me.

To make the `cdsprpcd` work you need to rebuild your kernel with this patchset by Ekansh Gupta from quic:
https://lore.kernel.org/all/20240508054250.2922-3-quic_ekangupt@quicinc.com/

This reponsitory is not containing any code viable for production, please proceed with caution.

Original fastrpc source: https://git.codelinaro.org/linaro/qcomlt/fastrpc