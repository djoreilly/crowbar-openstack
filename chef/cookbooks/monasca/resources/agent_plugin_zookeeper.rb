#
# Copyright 2017 SUSE Linux GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :create
default_action :create

attribute :built_by, kind_of: String, regex: /\A[-\w.]*\z/, required: true
attribute :name, kind_of: String, regex: /\A[-\w.]*\z/, required: true
attribute :host, kind_of: String, required: true
attribute :port, kind_of: Integer, default: 2181
attribute :timeout, kind_of: Integer, default: 3

attr_accessor :exists
