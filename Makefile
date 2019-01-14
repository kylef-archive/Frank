SWIFTC=swiftc

ifeq ($(shell uname -s), Darwin)
	XCODE=$(shell xcode-select -p)
	SDK=$(XCODE)/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk
	TARGET=x86_64-apple-macosx10.14
	SWIFTC=swiftc -target $(TARGET) -sdk $(SDK) -Xlinker -all_load
endif

LIBS=Curassow Inquiline Nest

SWIFT_ARGS=$(foreach lib,$(LIBS),-Xlinker .build/debug/$(lib).a)

Xanilla:
	@echo "Building Xanilla"
	@swift build
