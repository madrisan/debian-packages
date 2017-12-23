#!/bin/bash
# Build Debian Packages Wrapper
# Davide Madrisan <d.madrisan@gmail.com>

set -e

PROGNAME="${0##*/}"
REVISION="1"

function die() { echo -e "\n$PROGNAME: ERROR: $1\n" 1>&2; exit 1; }

buildir="/opt/build"
srcdir="/opt/sources"
datadir="/opt/share/packages"

package="$1"
[ "$package" ] || die "\
mandatory argument missing: package name
supported packages are:
$(find $datadir -type f -printf " - %f\n")"

outdir="${buildir}/packages"
mkdir -p $outdir

datafile="$datadir/${package}"
[ -r "$datafile" ] || die "no such file: $datafile"
. "$datafile"

debian_ver=$(cat /etc/debian_version 2>/dev/null)
debian_majver="$(IFS='.'; set -- $debian_ver; echo $1)"
host_outdir="output/debian${debian_majver}/${outdir/"$buildir/"/}"

export LC_ALL="C"

cd $srcdir
echo "** getting source code..."
__get_source_code || die "error while running __get_source_code()"
echo "** installing build requirements..."
__install_build_dependencies

echo "*** building source code..."
__build_source_code || die "error while running __build_source_code()"
echo "\
The .deb packages for Debian $debian_majver have been succefully built."

echo "*** moving packages to the ouput directory"
__move_packages_to_outdir

# list the files present in the buildir
cd ${outdir} \
   && find . -type f -name "$package*" -printf "$host_outdir/%f\n" \
   | sort

cd $srcdir
echo "*** remove temporary files created during the build process"
__cleanall
