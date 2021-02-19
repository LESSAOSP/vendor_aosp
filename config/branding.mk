# Versioning System
LESSAOSP_BASE_VERSION := 1.1
LESSAOSP_CODENAME := Amiga
LESSAOSP_DONATE_URL ?= Unknown
LESSAOSP_MAINTAINER ?= Unknown
LESSAOSP_SUPPORT_URL ?= https://t.me/LESSAOSP

# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 10.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

LESSAOSP_VERSION := $(LESSAOSP_CODENAME)-v$(LESSAOSP_BASE_VERSION)-$(TARGET_PRODUCT_SHORT)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)

CUSTOM_VERSION := LESSAOSP_$(EVO_BASE_VERSION)_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := ten

CUSTOM_PROPERTIES := \
    org.lessaosp.version=$(LESSAOSP_VERSION) \
    org.lessaosp.version.prop=$(CUSTOM_VERSION_PROP) \
    org.lessaosp.version.display=$(CUSTOM_VERSION) \
    org.lessaosp.build_version=$(LESSAOSP_BASE_VERSION) \
    org.lessaosp.build_date=$(CUSTOM_BUILD_DATE) \
    org.lessaosp.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.lessaosp.build_type=$(CUSTOM_BUILD_TYPE) \
    org.lessaosp.build_donate_url=$(LESSAOSP_DONATE_URL) \
    org.lessaosp.build_maintainer=$(LESSAOSP_MAINTAINER) \
    org.lessaosp.build_support_url=$(LESSAOSP_SUPPORT_URL) \
    org.lessaosp.build_codename=$(LESSAOSP_CODENAME)
