#
# Copyright (C) 2022 Vaticle
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

package(default_visibility = ["//visibility:public"])

load("@vaticle_dependencies//tool/checkstyle:rules.bzl", "checkstyle_test")

proto_library(
    name = "typedb-service",
    srcs = [":typedb-service.proto"],
    deps = [
        ":connection-proto",
        ":server-proto",
        ":user-proto",
        ":database-proto",
        ":session-proto",
        ":transaction-proto",
    ],
)

proto_library(
    name = "server-proto",
    srcs = [":server.proto"],
)

proto_library(
    name = "database-proto",
    srcs = [":database.proto"],
)

proto_library(
    name = "user-proto",
    srcs = [":user.proto"],
)

proto_library(
    name = "answer-proto",
    srcs = ["answer.proto"],
    deps = [":concept-proto"],
)

proto_library(
    name = "concept-proto",
    srcs = ["concept.proto"],
)

proto_library(
    name = "connection-proto",
    srcs = ["connection.proto"],
    deps = [
        ":version-proto",
    ],
)

proto_library(
    name = "logic-proto",
    srcs = ["logic.proto"],
    deps = [":answer-proto"]
)

proto_library(
    name = "options-proto",
    srcs = ["options.proto"],
)

proto_library(
    name = "query-proto",
    srcs = ["query.proto"],
    deps = [
        ":answer-proto",
        ":logic-proto",
        ":options-proto",
        ":concept-proto",
    ],
)

proto_library(
    name = "session-proto",
    srcs = ["session.proto"],
    deps = [":options-proto"],
)

proto_library(
    name = "transaction-proto",
    srcs = ["transaction.proto"],
    deps = [
        ":answer-proto",
        ":concept-proto",
        ":logic-proto",
        ":options-proto",
        ":query-proto",
    ]
)

proto_library(
    name = "version-proto",
    srcs = ["version.proto"],
)

# TODO: THIS SHOULD BE MADE TO STOP EXISTING
# This exists to support the nodejs build- when it becomes a real rule, we should extract the .src_files
# from the above proto_library rules, but for now this is required to get the source files.
filegroup(
    name = "proto-raw-buffers",
    srcs = [
        "answer.proto",
        "concept.proto",
        "connection.proto",
        "options.proto",
        "query.proto",
        "session.proto",
        "transaction.proto",
        "logic.proto",
        "version.proto",
    ]
)

checkstyle_test(
    name = "checkstyle",
    include = glob(["*"]),
    license_type = "agpl-header",
    size = "small",
)
