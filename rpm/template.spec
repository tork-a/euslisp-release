Name:           ros-indigo-euslisp
Version:        9.22.0
Release:        0%{?dist}
Summary:        ROS euslisp package

Group:          Development/Libraries
License:        BSD
URL:            http://euslisp.github.io/EusLisp/manual.html
Source0:        %{name}-%{version}.tar.gz

Requires:       derelict-PQ-devel
Requires:       libX11-devel
Requires:       libXext-devel
Requires:       libjpeg-turbo-devel
Requires:       libpng12-devel
Requires:       mesa-libGL-devel
Requires:       mesa-libGLU-devel
Requires:       postgresql-devel
Requires:       xorg-x11-fonts-100dpi
BuildRequires:  derelict-PQ-devel
BuildRequires:  libX11-devel
BuildRequires:  libXext-devel
BuildRequires:  libjpeg-turbo-devel
BuildRequires:  libpng12-devel
BuildRequires:  mesa-libGL-devel
BuildRequires:  mesa-libGLU-devel
BuildRequires:  postgresql-devel
BuildRequires:  ros-indigo-catkin
BuildRequires:  ros-indigo-cmake-modules
BuildRequires:  ros-indigo-mk
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
if [ -f "/opt/ros/indigo/setup.sh" ]; then . "/opt/ros/indigo/setup.sh"; fi
mkdir -p obj-%{_target_platform} && cd obj-%{_target_platform}
%cmake .. \
        -UINCLUDE_INSTALL_DIR \
        -ULIB_INSTALL_DIR \
        -USYSCONF_INSTALL_DIR \
        -USHARE_INSTALL_PREFIX \
        -ULIB_SUFFIX \
        -DCMAKE_INSTALL_LIBDIR="lib" \
        -DCMAKE_INSTALL_PREFIX="/opt/ros/indigo" \
        -DCMAKE_PREFIX_PATH="/opt/ros/indigo" \
        -DSETUPTOOLS_DEB_LAYOUT=OFF \
        -DCATKIN_BUILD_BINARY_PACKAGE="1" \

make %{?_smp_mflags}

%install
# In case we're installing to a non-standard location, look for a setup.sh
# in the install tree that was dropped by catkin, and source it.  It will
# set things like CMAKE_PREFIX_PATH, PKG_CONFIG_PATH, and PYTHONPATH.
if [ -f "/opt/ros/indigo/setup.sh" ]; then . "/opt/ros/indigo/setup.sh"; fi
cd obj-%{_target_platform}
make %{?_smp_mflags} install DESTDIR=%{buildroot}

%files
/opt/ros/indigo

%changelog
* Fri Dec 30 2016 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.22.0-0
- Autogenerated by Bloom

* Mon Sep 05 2016 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.21.0-1
- Autogenerated by Bloom

* Mon Sep 05 2016 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.21.0-0
- Autogenerated by Bloom

* Tue Aug 02 2016 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.20.0-0
- Autogenerated by Bloom

* Wed May 04 2016 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.19.0-0
- Autogenerated by Bloom

* Mon Apr 04 2016 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.18.0-1
- Autogenerated by Bloom

* Mon Apr 04 2016 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.18.0-0
- Autogenerated by Bloom

* Sun Mar 20 2016 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.17.0-0
- Autogenerated by Bloom

* Sat Oct 31 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.16.0-0
- Autogenerated by Bloom

* Mon Aug 31 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.15.1-0
- Autogenerated by Bloom

* Tue Aug 18 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.15.0-0
- Autogenerated by Bloom

* Fri Jun 19 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.14.0-1
- Autogenerated by Bloom

* Fri Jun 19 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.14.0-0
- Autogenerated by Bloom

* Thu Apr 23 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.12.2-0
- Autogenerated by Bloom

* Thu Apr 23 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.12.1-0
- Autogenerated by Bloom

* Wed Apr 22 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.12.0-0
- Autogenerated by Bloom

* Tue Apr 07 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.11.1-0
- Autogenerated by Bloom

* Thu Feb 19 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.11.0-1
- Autogenerated by Bloom

* Thu Feb 19 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.11.0-0
- Autogenerated by Bloom

* Tue Jan 13 2015 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.1.0-3
- Autogenerated by Bloom

* Sat Dec 27 2014 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.1.0-2
- Autogenerated by Bloom

* Mon Dec 22 2014 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.1.0-1
- Autogenerated by Bloom

* Mon Dec 22 2014 Kei Okada <k-okada@jsk.t.u-tokyo.ac.jp> - 9.1.0-0
- Autogenerated by Bloom

