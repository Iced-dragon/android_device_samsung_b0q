#!/bin/bash
# Universal Android proprietary blob extractor script

export DEVICE=b0q
export VENDOR=samsung
export MY_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# Initialize the helper framework
if [ -z "${ANDROID_BUILD_TOP}" ]; then
    export ANDROID_BUILD_TOP=$(cd ../../../; pwd)
fi

# Load standard Lineage extraction helpers
if [ -f "${ANDROID_BUILD_TOP}/tools/extract-utils/extract_utils.sh" ]; then
    . "${ANDROID_BUILD_TOP}/tools/extract-utils/extract_utils.sh"
else
    echo "Error: Standard Lineage extract-utils framework not found."
    exit 1
fi

# Initialize the vendor folder setup structure
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_BUILD_TOP}"

# Pull files listed inside proprietary-files.txt over ADB
extract "${MY_DIR}/proprietary-files.txt" "${SRC}" "${SECTION}"

write_footers

