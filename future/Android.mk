# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
LOCAL_PATH := $(call my-dir)

# Maven Upload
# ===========================================================
include $(CLEAR_VARS)

LOCAL_MODULE := cmsdk-development-maven-SNAPSHOT
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_TAGS := optional

#Optional copy to local path, we'll build the module, copy it here, and publish from here.
LOCAL_MAVEN_ARTIFACT_PATH := $(LOCAL_PATH)/org.cyanogenmod.platform.sdk.aar

#Remote details
LOCAL_MAVEN_REPO_ID := remote-repository
LOCAL_MAVEN_REPO := https://oss.sonatype.org/content/repositories/snapshots
LOCAL_MAVEN_CLASSIFICATION := $(VARIANT)Release

#This is the target module to compile prior to publish
LOCAL_MAVEN_TARGET_MODULE := org.cyanogenmod.platform.sdk.aar
LOCAL_MAVEN_POM := $(LOCAL_PATH)/pom.xml

include $(PUBLISH_MAVEN_PREBUILT)
