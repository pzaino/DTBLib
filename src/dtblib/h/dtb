/*
 * DTBLib: Device Tree Blob Parsing Library
 *
 * Copyright (c) 2023 by Paolo Fabio Zaino, all rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Limitations:
 * - Redistribution and use of this software in source and binary
 *   forms, with or without modification, are permitted provided that
 *   the following conditions are met:
 *   - Redistributions of source code must retain the above copyright
 *     notice, this list of conditions, and the following disclaimer.
 *   - Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions, and the following
 *     disclaimer in the documentation and/or other materials
 *     provided with the distribution.
 *   - Neither the name of Paolo Fabio Zaino, nor the names
 *     of its contributors may be used to endorse or promote products
 *     derived from this software without specific prior written
 *     permission.
 *   - Users of this software are prohibited from misrepresenting
 *     themselves as the authors or original contributors of this
 *     software.
 *
 * This software is provided by the copyright holders and contributors
 * "as is" and any express or implied warranties, including, but not
 * limited to, the implied warranties of merchantability and fitness
 * for a particular purpose are disclaimed. In no event shall the
 * copyright owner or contributors be liable for any direct,
 * indirect, incidental, special, exemplary, or consequential damages
 * (including, but not limited to, procurement of substitute goods or
 * services; loss of use, data, or profits; or business interruption)
 * however caused and on any theory of liability, whether in
 * contract, strict liability, or tort (including negligence or
 * otherwise) arising in any way out of the use of this software,
 * even if advised of the possibility of such damage.
 *
 * For more details and the full text of the license, refer to the
 * Apache 2.0 License file included with this project or available at
 * the above URL.
 */

#ifndef DTBLIB_H_
#define DTBLIB_H_

#define FDT_MAGIC 0xd00dfeed
#define FDT_BEGIN_NODE 1
#define FDT_END_NODE 2
#define FDT_PROP 3
#define FDT_NOP 4
#define FDT_END 9

#define MIN_DTB_VERSION 1
#define MAX_DTB_VERSION 17

struct dt_node {
    char* name;                   // Name of the node
    struct dt_property* props;    // Pointer to the first property of the node
    int prop_count;               // Count of properties in the node
    struct dt_node* parent;       // Pointer to the parent node (NULL for root)
    struct dt_node* children;     // Pointer to the first child node
    struct dt_node* next_sibling; // Pointer to the next sibling node
};

struct dt_property {
    char* name;                   // Name of the property
    void* value;                  // Pointer to the value of the property
    unsigned int size;            // Size of the value in bytes
    struct dt_property* next;     // Pointer to the next property
};

struct dt_node* parse_dtb(
    const char* dtb_data,
    const char* strings_block,
    int offset
);

#endif /* DTBLIB_H_ */
