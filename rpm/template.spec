Name:           ros-melodic-euslisp
Version:        9.26.0
Release:        1%{?dist}
Summary:        ROS euslisp package

Group:          Development/Libraries
License:        BSD
URL:            http://euslisp.github.io/EusLisp/manual.html
Source0:        %{name}-%{version}.tar.gz

Requires:       derelict-PQ-devel
Requires:       libX11-devel
Requires:       libXext-devel
Requires:       libjpeg-turbo-devel
Requires:       libpng-devel
Requires:       mesa-libGL-devel
Requires:       mesa-libGLU-devel
Requires:       postgresql-devel
Requires:       xorg-x11-fonts-100dpi
BuildRequires:  derelict-PQ-devel
BuildRequires:  libX11-devel
BuildRequires:  libXext-devel
BuildRequires:  libjpeg-turbo-devel
BuildRequires:  libpng-devel
BuildRequires:  mesa-libGL-devel
BuildRequires:  mesa-libGLU-devel
BuildRequires:  postgresql-devel
BuildRequires:  ros-melodic-catkin
BuildRequires:  ros-melodic-cmake-modules
BuildRequires:  ros-melodic-mk
BuildRequires:  xorg-x11-fonts-100dpi

%description
EusLisp is an integrated programming system for the research on intelligent
robots based on Common Lisp and Object-Oriented programming

%prep
%setup -q

%build
# In case we're installing to a non-standard location, look for a setup.sh
# in the install tree that was dropped by catkin, and source it.  It will
# set things like CMAKE_PREFIX_PATH, PKG_CONFIG_PATH, and PYTHONPATH.
if [ -f "/opt/ros/melodic/setup.sh" ]; then . "/opt/ros/melodic/setup.sh"; fi
mkdir -p obj-%{_target_platform} && cd obj-%{_target_platform}
%cmake .. \
        -UINCLUDE_INSTALL_DIR \
        -ULIB_INSTALL_DIR \
        -USYSCONF_INSTALL_DIR \
        -USHARE_INSTALL_PREFIX \
        -ULIB_SUFFIX \
        -DCMAKE_INSTALL_LIBDIR="lib" \
        -DCMAKE_INSTALL_PREFIX="/opt/ros/melodic" \
        -DCMAKE_PREFIX_PATH="/opt/ros/melodic" \
        -DSETUPTOOLS_DEB_LAYOUT=OFF \
        -DCATKIN_BUILD_BINARY_PACKAGE="1" \

make %{?_smp_mflags}

%install
# In case we're installing to a non-standard location, look for a setup.sh
# in the install tree that was dropped by catkin, and source it.  It will
# set things like CMAKE_PREFIX_PATH, PKG_CONFIG_PATH, and PYTHONPATH.
if [ -f "/opt/ros/melodic/setup.sh" ]; then . "/opt/ros/melodic/setup.sh"; fi
cd obj-%{_target_platform}
make %{?_smp_mflags} install DESTDIR=%{buildroot}

%files
/opt/ros/melodic

%changelog
* Wed Mar 06 2019 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.26.0-1
- Autogenerated by Bloom

* Mon Dec 17 2018 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.26.0-0
- Autogenerated by Bloom

* Thu Jul 19 2018 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.25.0-0
- Autogenerated by Bloom

* Thu Jul 19 2018 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.24.0-1
- Autogenerated by Bloom

