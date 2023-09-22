#!/bin/bash
sudo parted /dev/vdb mklabel gpt
sudo parted /dev/vdb mkpart primary ext4 0% 100%
# Format the disk (example: /dev/vdb)
mkfs.ext4 /dev/vdb1
# Create a mount point and mount the disk
mkdir /mnt/data
mount /dev/vdb1 /mnt/data
# Add an entry to /etc/fstab to mount the disk on boot
echo '/dev/vdb1 /mnt/data ext4 defaults 0 0' >> /etc/fstab

sudo systemctl stop unattended-upgrades
sudo pkill --signal SIGKILL unattended-upgrades
sudo apt remove -y unattended-upgrades
sudo apt -y purge unattended-upgrades

sudo apt update
sudo apt install -y libblas-dev libsecp256k1-dev libsodium-dev libgsl-dev liblz4-dev unzip

#if [[ $HOSTNAME == @(val-001|val-010|val-020|val-030|val-040) ]]; then
#  wget -O /tmp/netdata-kickstart.sh https://my-netdata.io/kickstart.sh && sh /tmp/netdata-kickstart.sh --nightly-channel --claim-token MBd5-C2PBqeLJCcbSGLOVSlliPvguLNbk-1pWhagKMmyOqu0E6dM5bVJe43SJTshZvfuU-h8zSIbJtHXYPAOEafLpUCz7u7N5x6-V5d3ErZbnNdiq-4ucNV2SHX1jCInU-OmG7w --claim-rooms 9758d9b2-18d4-4a1d-bda0-4290a570981a --claim-url https://app.netdata.cloud
#fi

sudo echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC190+w9FOyH4MsB94KzF2neNPV9t0ZeMXXjRpYfAnnf ton_deploy@swisscops' >> ~/.ssh/authorized_keys
sudo echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPRzdQPADLAaW0G+fwAPy8+RVJeHk4og3K29ufkdGYkW spycheese@ton-swarm' >> ~/.ssh/authorized_keys
sudo echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINl6ajp0cFW6KLPNLwcLj5ti/5Sojt4Hu7Iv5lepMgCw root@ton-ali-002' >> ~/.ssh/authorized_keys
sudo echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC3LyP2DEpk6DNbQST62txaFE9M3nz5QIjXcJSQnci8W main@MacBook' >> ~/.ssh/authorized_keys
sudo echo 'from="172.16.0.0/21" ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJTKmHfkORfGCNWo4cANYV/NKc5tpOjQBlO09e0wXm7u ubuntu@196S010950' >> ~/.ssh/authorized_keys

sudo cat >> ~/.ssh/id_ed25519 <<EOF
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACCUyph35DkXxgjVqOHADWFfzSnObaTo0AZTtPXtMF5u7gAAAJiyMZTEsjGU
xAAAAAtzc2gtZWQyNTUxOQAAACCUyph35DkXxgjVqOHADWFfzSnObaTo0AZTtPXtMF5u7g
AAAECwGaRb9tb8l1p3SxZqu0xMyhGu2/EER1zDbpPLEcuZ0ZTKmHfkORfGCNWo4cANYV/N
Kc5tpOjQBlO09e0wXm7uAAAAEXVidW50dUAxOTZTMDEwOTUwAQIDBA==
-----END OPENSSH PRIVATE KEY-----
EOF

sudo chmod 0400 ~/.ssh/id_ed25519

sudo echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config

sudo cat >> /etc/hosts <<EOF
172.16.0.1 val-a-1
172.16.0.2 val-a-2
172.16.0.3 val-a-3
172.16.0.4 val-a-4
172.16.0.5 val-a-5
172.16.0.6 val-a-6
172.16.0.7 val-a-7
172.16.0.8 val-a-8
172.16.0.9 val-a-9
172.16.0.10 val-a-10
172.16.0.11 val-a-11
172.16.0.12 val-a-12
172.16.0.13 val-a-13
172.16.0.14 val-a-14
172.16.0.15 val-a-15
172.16.0.16 val-a-16
172.16.0.17 val-a-17
172.16.0.18 val-a-18
172.16.0.19 val-a-19
172.16.0.20 val-a-20
172.16.0.21 val-a-21
172.16.0.22 val-a-22
172.16.0.23 val-a-23
172.16.0.24 val-a-24
172.16.0.25 val-a-25
172.16.0.26 val-a-26
172.16.0.27 val-a-27
172.16.0.28 val-a-28
172.16.0.29 val-a-29
172.16.0.30 val-a-30
172.16.0.31 val-a-31
172.16.0.32 val-a-32
172.16.0.33 val-a-33
172.16.0.34 val-a-34
172.16.0.35 val-a-35
172.16.0.36 val-a-36
172.16.0.37 val-a-37
172.16.0.38 val-a-38
172.16.0.39 val-a-39
172.16.0.40 val-a-40
172.16.0.41 val-a-41
172.16.0.42 val-a-42
172.16.0.43 val-a-43
172.16.0.44 val-a-44
172.16.0.45 val-a-45
172.16.0.46 val-a-46
172.16.0.47 val-a-47
172.16.0.48 val-a-48
172.16.0.49 val-a-49
172.16.0.50 val-a-50
172.16.0.51 val-a-51
172.16.0.52 val-a-52
172.16.0.53 val-a-53
172.16.0.54 val-a-54
172.16.0.55 val-a-55
172.16.0.56 val-a-56
172.16.0.57 val-a-57
172.16.0.58 val-a-58
172.16.0.59 val-a-59
172.16.0.60 val-a-60
172.16.0.61 val-a-61
172.16.0.62 val-a-62
172.16.0.63 val-a-63
172.16.0.64 val-a-64
172.16.0.65 val-a-65
172.16.0.66 val-a-66
172.16.0.67 val-a-67
172.16.0.68 val-a-68
172.16.0.69 val-a-69
172.16.0.70 val-a-70
172.16.0.71 val-a-71
172.16.0.72 val-a-72
172.16.0.73 val-a-73
172.16.0.74 val-a-74
172.16.0.75 val-a-75
172.16.0.76 val-a-76
172.16.0.77 val-a-77
172.16.0.78 val-a-78
172.16.0.79 val-a-79
172.16.0.80 val-a-80
172.16.0.81 val-a-81
172.16.0.82 val-a-82
172.16.0.83 val-a-83
172.16.0.84 val-a-84
172.16.0.85 val-a-85
172.16.0.86 val-a-86
172.16.0.87 val-a-87
172.16.0.88 val-a-88
172.16.0.89 val-a-89
172.16.0.90 val-a-90
172.16.0.91 val-a-91
172.16.0.92 val-a-92
172.16.0.93 val-a-93
172.16.0.94 val-a-94
172.16.0.95 val-a-95
172.16.0.96 val-a-96
172.16.0.97 val-a-97
172.16.0.98 val-a-98
172.16.0.99 val-a-99
172.16.0.100 val-a-100
172.16.0.101 val-a-101
172.16.0.102 val-a-102
172.16.0.103 val-a-103
172.16.0.104 val-a-104
172.16.0.105 val-a-105
172.16.0.106 val-a-106
172.16.0.107 val-a-107
172.16.0.108 val-a-108
172.16.0.109 val-a-109
172.16.0.110 val-a-110
172.16.0.111 val-a-111
172.16.0.112 val-a-112
172.16.0.113 val-a-113
172.16.0.114 val-a-114
172.16.0.115 val-a-115
172.16.0.116 val-a-116
172.16.0.117 val-a-117
172.16.0.118 val-a-118
172.16.0.119 val-a-119
172.16.0.120 val-a-120
172.16.0.121 val-a-121
172.16.0.122 val-a-122
172.16.0.123 val-a-123
172.16.0.124 val-a-124
172.16.0.125 val-a-125
172.16.0.126 val-a-126
172.16.0.127 val-a-127
172.16.0.128 val-a-128
172.16.0.129 val-a-129
172.16.0.130 val-a-130
172.16.0.131 val-a-131
172.16.0.132 val-a-132
172.16.0.133 val-a-133
172.16.0.134 val-a-134
172.16.0.135 val-a-135
172.16.0.136 val-a-136
172.16.0.137 val-a-137
172.16.0.138 val-a-138
172.16.0.139 val-a-139
172.16.0.140 val-a-140
172.16.0.141 val-a-141
172.16.0.142 val-a-142
172.16.0.143 val-a-143
172.16.0.144 val-a-144
172.16.0.145 val-a-145
172.16.0.146 val-a-146
172.16.0.147 val-a-147
172.16.0.148 val-a-148
172.16.0.149 val-a-149
172.16.0.150 val-a-150
172.16.0.151 val-a-151
172.16.0.152 val-a-152
172.16.0.153 val-a-153
172.16.0.154 val-a-154
172.16.0.155 val-a-155
172.16.0.156 val-a-156
172.16.0.157 val-a-157
172.16.0.158 val-a-158
172.16.0.159 val-a-159
172.16.0.160 val-a-160
172.16.0.161 val-a-161
172.16.0.162 val-a-162
172.16.0.163 val-a-163
172.16.0.164 val-a-164
172.16.0.165 val-a-165
172.16.0.166 val-a-166
172.16.0.167 val-a-167
172.16.0.168 val-a-168
172.16.0.169 val-a-169
172.16.0.170 val-a-170
172.16.0.171 val-a-171
172.16.0.172 val-a-172
172.16.0.173 val-a-173
172.16.0.174 val-a-174
172.16.0.175 val-a-175
172.16.0.176 val-a-176
172.16.0.177 val-a-177
172.16.0.178 val-a-178
172.16.0.179 val-a-179
172.16.0.180 val-a-180
172.16.0.181 val-a-181
172.16.0.182 val-a-182
172.16.0.183 val-a-183
172.16.0.184 val-a-184
172.16.0.185 val-a-185
172.16.0.186 val-a-186
172.16.0.187 val-a-187
172.16.0.188 val-a-188
172.16.0.189 val-a-189
172.16.0.190 val-a-190
172.16.0.191 val-a-191
172.16.0.192 val-a-192
172.16.0.193 val-a-193
172.16.0.194 val-a-194
172.16.0.195 val-a-195
172.16.0.196 val-a-196
172.16.0.197 val-a-197
172.16.0.198 val-a-198
172.16.0.199 val-a-199
172.16.0.200 val-a-200
172.16.0.201 val-a-201
172.16.0.202 val-a-202
172.16.0.203 val-a-203
172.16.0.204 val-a-204
172.16.0.205 val-a-205
172.16.0.206 val-a-206
172.16.0.207 val-a-207
172.16.0.208 val-a-208
172.16.0.209 val-a-209
172.16.0.210 val-a-210
172.16.0.211 val-a-211
172.16.0.212 val-a-212
172.16.0.213 val-a-213
172.16.0.214 val-a-214
172.16.0.215 val-a-215
172.16.0.216 val-a-216
172.16.0.217 val-a-217
172.16.0.218 val-a-218
172.16.0.219 val-a-219
172.16.0.220 val-a-220
172.16.0.221 val-a-221
172.16.0.222 val-a-222
172.16.0.223 val-a-223
172.16.0.224 val-a-224
172.16.0.225 val-a-225
172.16.0.226 val-a-226
172.16.0.227 val-a-227
172.16.0.228 val-a-228
172.16.0.229 val-a-229
172.16.0.230 val-a-230
172.16.0.231 val-a-231
172.16.0.232 val-a-232
172.16.0.233 val-a-233
172.16.0.234 val-a-234
172.16.0.235 val-a-235
172.16.0.236 val-a-236
172.16.0.237 val-a-237
172.16.0.238 val-a-238
172.16.0.239 val-a-239
172.16.0.240 val-a-240
172.16.0.241 val-a-241
172.16.0.242 val-a-242
172.16.0.243 val-a-243
172.16.0.244 val-a-244
172.16.0.245 val-a-245
172.16.0.246 val-a-246
172.16.0.247 val-a-247
172.16.0.248 val-a-248
172.16.0.249 val-a-249
172.16.0.250 val-a-250
172.16.0.251 val-a-251
172.16.0.252 val-a-252
172.16.0.253 val-a-253
172.16.0.254 val-a-254
172.16.1.1 val-b-1
172.16.1.2 val-b-2
172.16.1.3 val-b-3
172.16.1.4 val-b-4
172.16.1.5 val-b-5
172.16.1.6 val-b-6
172.16.1.7 val-b-7
172.16.1.8 val-b-8
172.16.1.9 val-b-9
172.16.1.10 val-b-10
172.16.1.11 val-b-11
172.16.1.12 val-b-12
172.16.1.13 val-b-13
172.16.1.14 val-b-14
172.16.1.15 val-b-15
172.16.1.16 val-b-16
172.16.1.17 val-b-17
172.16.1.18 val-b-18
172.16.1.19 val-b-19
172.16.1.20 val-b-20
172.16.1.21 val-b-21
172.16.1.22 val-b-22
172.16.1.23 val-b-23
172.16.1.24 val-b-24
172.16.1.25 val-b-25
172.16.1.26 val-b-26
172.16.1.27 val-b-27
172.16.1.28 val-b-28
172.16.1.29 val-b-29
172.16.1.30 val-b-30
172.16.1.31 val-b-31
172.16.1.32 val-b-32
172.16.1.33 val-b-33
172.16.1.34 val-b-34
172.16.1.35 val-b-35
172.16.1.36 val-b-36
172.16.1.37 val-b-37
172.16.1.38 val-b-38
172.16.1.39 val-b-39
172.16.1.40 val-b-40
172.16.1.41 val-b-41
172.16.1.42 val-b-42
172.16.1.43 val-b-43
172.16.1.44 val-b-44
172.16.1.45 val-b-45
172.16.1.46 val-b-46
172.16.1.47 val-b-47
172.16.1.48 val-b-48
172.16.1.49 val-b-49
172.16.1.50 val-b-50
172.16.1.51 val-b-51
172.16.1.52 val-b-52
172.16.1.53 val-b-53
172.16.1.54 val-b-54
172.16.1.55 val-b-55
172.16.1.56 val-b-56
172.16.1.57 val-b-57
172.16.1.58 val-b-58
172.16.1.59 val-b-59
172.16.1.60 val-b-60
172.16.1.61 val-b-61
172.16.1.62 val-b-62
172.16.1.63 val-b-63
172.16.1.64 val-b-64
172.16.1.65 val-b-65
172.16.1.66 val-b-66
172.16.1.67 val-b-67
172.16.1.68 val-b-68
172.16.1.69 val-b-69
172.16.1.70 val-b-70
172.16.1.71 val-b-71
172.16.1.72 val-b-72
172.16.1.73 val-b-73
172.16.1.74 val-b-74
172.16.1.75 val-b-75
172.16.1.76 val-b-76
172.16.1.77 val-b-77
172.16.1.78 val-b-78
172.16.1.79 val-b-79
172.16.1.80 val-b-80
172.16.1.81 val-b-81
172.16.1.82 val-b-82
172.16.1.83 val-b-83
172.16.1.84 val-b-84
172.16.1.85 val-b-85
172.16.1.86 val-b-86
172.16.1.87 val-b-87
172.16.1.88 val-b-88
172.16.1.89 val-b-89
172.16.1.90 val-b-90
172.16.1.91 val-b-91
172.16.1.92 val-b-92
172.16.1.93 val-b-93
172.16.1.94 val-b-94
172.16.1.95 val-b-95
172.16.1.96 val-b-96
172.16.1.97 val-b-97
172.16.1.98 val-b-98
172.16.1.99 val-b-99
172.16.1.100 val-b-100
172.16.1.101 val-b-101
172.16.1.102 val-b-102
172.16.1.103 val-b-103
172.16.1.104 val-b-104
172.16.1.105 val-b-105
172.16.1.106 val-b-106
172.16.1.107 val-b-107
172.16.1.108 val-b-108
172.16.1.109 val-b-109
172.16.1.110 val-b-110
172.16.1.111 val-b-111
172.16.1.112 val-b-112
172.16.1.113 val-b-113
172.16.1.114 val-b-114
172.16.1.115 val-b-115
172.16.1.116 val-b-116
172.16.1.117 val-b-117
172.16.1.118 val-b-118
172.16.1.119 val-b-119
172.16.1.120 val-b-120
172.16.1.121 val-b-121
172.16.1.122 val-b-122
172.16.1.123 val-b-123
172.16.1.124 val-b-124
172.16.1.125 val-b-125
172.16.1.126 val-b-126
172.16.1.127 val-b-127
172.16.1.128 val-b-128
172.16.1.129 val-b-129
172.16.1.130 val-b-130
172.16.1.131 val-b-131
172.16.1.132 val-b-132
172.16.1.133 val-b-133
172.16.1.134 val-b-134
172.16.1.135 val-b-135
172.16.1.136 val-b-136
172.16.1.137 val-b-137
172.16.1.138 val-b-138
172.16.1.139 val-b-139
172.16.1.140 val-b-140
172.16.1.141 val-b-141
172.16.1.142 val-b-142
172.16.1.143 val-b-143
172.16.1.144 val-b-144
172.16.1.145 val-b-145
172.16.1.146 val-b-146
172.16.1.147 val-b-147
172.16.1.148 val-b-148
172.16.1.149 val-b-149
172.16.1.150 val-b-150
172.16.1.151 val-b-151
172.16.1.152 val-b-152
172.16.1.153 val-b-153
172.16.1.154 val-b-154
172.16.1.155 val-b-155
172.16.1.156 val-b-156
172.16.1.157 val-b-157
172.16.1.158 val-b-158
172.16.1.159 val-b-159
172.16.1.160 val-b-160
172.16.1.161 val-b-161
172.16.1.162 val-b-162
172.16.1.163 val-b-163
172.16.1.164 val-b-164
172.16.1.165 val-b-165
172.16.1.166 val-b-166
172.16.1.167 val-b-167
172.16.1.168 val-b-168
172.16.1.169 val-b-169
172.16.1.170 val-b-170
172.16.1.171 val-b-171
172.16.1.172 val-b-172
172.16.1.173 val-b-173
172.16.1.174 val-b-174
172.16.1.175 val-b-175
172.16.1.176 val-b-176
172.16.1.177 val-b-177
172.16.1.178 val-b-178
172.16.1.179 val-b-179
172.16.1.180 val-b-180
172.16.1.181 val-b-181
172.16.1.182 val-b-182
172.16.1.183 val-b-183
172.16.1.184 val-b-184
172.16.1.185 val-b-185
172.16.1.186 val-b-186
172.16.1.187 val-b-187
172.16.1.188 val-b-188
172.16.1.189 val-b-189
172.16.1.190 val-b-190
172.16.1.191 val-b-191
172.16.1.192 val-b-192
172.16.1.193 val-b-193
172.16.1.194 val-b-194
172.16.1.195 val-b-195
172.16.1.196 val-b-196
172.16.1.197 val-b-197
172.16.1.198 val-b-198
172.16.1.199 val-b-199
172.16.1.200 val-b-200
172.16.1.201 val-b-201
172.16.1.202 val-b-202
172.16.1.203 val-b-203
172.16.1.204 val-b-204
172.16.1.205 val-b-205
172.16.1.206 val-b-206
172.16.1.207 val-b-207
172.16.1.208 val-b-208
172.16.1.209 val-b-209
172.16.1.210 val-b-210
172.16.1.211 val-b-211
172.16.1.212 val-b-212
172.16.1.213 val-b-213
172.16.1.214 val-b-214
172.16.1.215 val-b-215
172.16.1.216 val-b-216
172.16.1.217 val-b-217
172.16.1.218 val-b-218
172.16.1.219 val-b-219
172.16.1.220 val-b-220
172.16.1.221 val-b-221
172.16.1.222 val-b-222
172.16.1.223 val-b-223
172.16.1.224 val-b-224
172.16.1.225 val-b-225
172.16.1.226 val-b-226
172.16.1.227 val-b-227
172.16.1.228 val-b-228
172.16.1.229 val-b-229
172.16.1.230 val-b-230
172.16.1.231 val-b-231
172.16.1.232 val-b-232
172.16.1.233 val-b-233
172.16.1.234 val-b-234
172.16.1.235 val-b-235
172.16.1.236 val-b-236
172.16.1.237 val-b-237
172.16.1.238 val-b-238
172.16.1.239 val-b-239
172.16.1.240 val-b-240
172.16.1.241 val-b-241
172.16.1.242 val-b-242
172.16.1.243 val-b-243
172.16.1.244 val-b-244
172.16.1.245 val-b-245
172.16.1.246 val-b-246
172.16.1.247 val-b-247
172.16.1.248 val-b-248
172.16.1.249 val-b-249
172.16.1.250 val-b-250
172.16.1.251 val-b-251
172.16.1.252 val-b-252
172.16.1.253 val-b-253
172.16.1.254 val-b-254
172.16.2.1 val-c-1
172.16.2.2 val-c-2
172.16.2.3 val-c-3
172.16.2.4 val-c-4
172.16.2.5 val-c-5
172.16.2.6 val-c-6
172.16.2.7 val-c-7
172.16.2.8 val-c-8
172.16.2.9 val-c-9
172.16.2.10 val-c-10
172.16.2.11 val-c-11
172.16.2.12 val-c-12
172.16.2.13 val-c-13
172.16.2.14 val-c-14
172.16.2.15 val-c-15
172.16.2.16 val-c-16
172.16.2.17 val-c-17
172.16.2.18 val-c-18
172.16.2.19 val-c-19
172.16.2.20 val-c-20
172.16.2.21 val-c-21
172.16.2.22 val-c-22
172.16.2.23 val-c-23
172.16.2.24 val-c-24
172.16.2.25 val-c-25
172.16.2.26 val-c-26
172.16.2.27 val-c-27
172.16.2.28 val-c-28
172.16.2.29 val-c-29
172.16.2.30 val-c-30
172.16.2.31 val-c-31
172.16.2.32 val-c-32
172.16.2.33 val-c-33
172.16.2.34 val-c-34
172.16.2.35 val-c-35
172.16.2.36 val-c-36
172.16.2.37 val-c-37
172.16.2.38 val-c-38
172.16.2.39 val-c-39
172.16.2.40 val-c-40
172.16.2.41 val-c-41
172.16.2.42 val-c-42
172.16.2.43 val-c-43
172.16.2.44 val-c-44
172.16.2.45 val-c-45
172.16.2.46 val-c-46
172.16.2.47 val-c-47
172.16.2.48 val-c-48
172.16.2.49 val-c-49
172.16.2.50 val-c-50
172.16.2.51 val-c-51
172.16.2.52 val-c-52
172.16.2.53 val-c-53
172.16.2.54 val-c-54
172.16.2.55 val-c-55
172.16.2.56 val-c-56
172.16.2.57 val-c-57
172.16.2.58 val-c-58
172.16.2.59 val-c-59
172.16.2.60 val-c-60
172.16.2.61 val-c-61
172.16.2.62 val-c-62
172.16.2.63 val-c-63
172.16.2.64 val-c-64
172.16.2.65 val-c-65
172.16.2.66 val-c-66
172.16.2.67 val-c-67
172.16.2.68 val-c-68
172.16.2.69 val-c-69
172.16.2.70 val-c-70
172.16.2.71 val-c-71
172.16.2.72 val-c-72
172.16.2.73 val-c-73
172.16.2.74 val-c-74
172.16.2.75 val-c-75
172.16.2.76 val-c-76
172.16.2.77 val-c-77
172.16.2.78 val-c-78
172.16.2.79 val-c-79
172.16.2.80 val-c-80
172.16.2.81 val-c-81
172.16.2.82 val-c-82
172.16.2.83 val-c-83
172.16.2.84 val-c-84
172.16.2.85 val-c-85
172.16.2.86 val-c-86
172.16.2.87 val-c-87
172.16.2.88 val-c-88
172.16.2.89 val-c-89
172.16.2.90 val-c-90
172.16.2.91 val-c-91
172.16.2.92 val-c-92
172.16.2.93 val-c-93
172.16.2.94 val-c-94
172.16.2.95 val-c-95
172.16.2.96 val-c-96
172.16.2.97 val-c-97
172.16.2.98 val-c-98
172.16.2.99 val-c-99
172.16.2.100 val-c-100
172.16.2.101 val-c-101
172.16.2.102 val-c-102
172.16.2.103 val-c-103
172.16.2.104 val-c-104
172.16.2.105 val-c-105
172.16.2.106 val-c-106
172.16.2.107 val-c-107
172.16.2.108 val-c-108
172.16.2.109 val-c-109
172.16.2.110 val-c-110
172.16.2.111 val-c-111
172.16.2.112 val-c-112
172.16.2.113 val-c-113
172.16.2.114 val-c-114
172.16.2.115 val-c-115
172.16.2.116 val-c-116
172.16.2.117 val-c-117
172.16.2.118 val-c-118
172.16.2.119 val-c-119
172.16.2.120 val-c-120
172.16.2.121 val-c-121
172.16.2.122 val-c-122
172.16.2.123 val-c-123
172.16.2.124 val-c-124
172.16.2.125 val-c-125
172.16.2.126 val-c-126
172.16.2.127 val-c-127
172.16.2.128 val-c-128
172.16.2.129 val-c-129
172.16.2.130 val-c-130
172.16.2.131 val-c-131
172.16.2.132 val-c-132
172.16.2.133 val-c-133
172.16.2.134 val-c-134
172.16.2.135 val-c-135
172.16.2.136 val-c-136
172.16.2.137 val-c-137
172.16.2.138 val-c-138
172.16.2.139 val-c-139
172.16.2.140 val-c-140
172.16.2.141 val-c-141
172.16.2.142 val-c-142
172.16.2.143 val-c-143
172.16.2.144 val-c-144
172.16.2.145 val-c-145
172.16.2.146 val-c-146
172.16.2.147 val-c-147
172.16.2.148 val-c-148
172.16.2.149 val-c-149
172.16.2.150 val-c-150
172.16.2.151 val-c-151
172.16.2.152 val-c-152
172.16.2.153 val-c-153
172.16.2.154 val-c-154
172.16.2.155 val-c-155
172.16.2.156 val-c-156
172.16.2.157 val-c-157
172.16.2.158 val-c-158
172.16.2.159 val-c-159
172.16.2.160 val-c-160
172.16.2.161 val-c-161
172.16.2.162 val-c-162
172.16.2.163 val-c-163
172.16.2.164 val-c-164
172.16.2.165 val-c-165
172.16.2.166 val-c-166
172.16.2.167 val-c-167
172.16.2.168 val-c-168
172.16.2.169 val-c-169
172.16.2.170 val-c-170
172.16.2.171 val-c-171
172.16.2.172 val-c-172
172.16.2.173 val-c-173
172.16.2.174 val-c-174
172.16.2.175 val-c-175
172.16.2.176 val-c-176
172.16.2.177 val-c-177
172.16.2.178 val-c-178
172.16.2.179 val-c-179
172.16.2.180 val-c-180
172.16.2.181 val-c-181
172.16.2.182 val-c-182
172.16.2.183 val-c-183
172.16.2.184 val-c-184
172.16.2.185 val-c-185
172.16.2.186 val-c-186
172.16.2.187 val-c-187
172.16.2.188 val-c-188
172.16.2.189 val-c-189
172.16.2.190 val-c-190
172.16.2.191 val-c-191
172.16.2.192 val-c-192
172.16.2.193 val-c-193
EOF