local ls = require 'luasnip'
local s = ls.snippet
local f = ls.function_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

return {
  -- C file header snippet
  s(
    'header_apache',
    fmt(
      [[
/**
 * @file {project}.c
 * @brief {description}
 * @author Jiandong Qiu
 * @date {}
 *
 * Copyright (c) {} Jiandong Qiu
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

]],
      {
        project = i(1, 'ProjectName'),
        description = i(2, 'Short description'),
        f(function()
          return os.date '%Y-%m-%d'
        end),
        os.date '%Y',
      }
    )
  ),
}
