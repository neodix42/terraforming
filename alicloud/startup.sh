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

if [[ $HOSTNAME == @(val-001|val-010|val-020|val-030|val-040) ]]; then
  wget -O /tmp/netdata-kickstart.sh https://my-netdata.io/kickstart.sh && sh /tmp/netdata-kickstart.sh --nightly-channel --claim-token MBd5-C2PBqeLJCcbSGLOVSlliPvguLNbk-1pWhagKMmyOqu0E6dM5bVJe43SJTshZvfuU-h8zSIbJtHXYPAOEafLpUCz7u7N5x6-V5d3ErZbnNdiq-4ucNV2SHX1jCInU-OmG7w --claim-rooms 9758d9b2-18d4-4a1d-bda0-4290a570981a --claim-url https://app.netdata.cloud
fi

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
172.16.0.1 val-001
172.16.0.2 val-002
172.16.0.3 val-003
172.16.0.4 val-004
172.16.0.5 val-005
172.16.0.6 val-006
172.16.0.7 val-007
172.16.0.8 val-008
172.16.0.9 val-009
172.16.0.10 val-010
172.16.0.11 val-011
172.16.0.12 val-012
172.16.0.13 val-013
172.16.0.14 val-014
172.16.0.15 val-015
172.16.0.16 val-016
172.16.0.17 val-017
172.16.0.18 val-018
172.16.0.19 val-019
172.16.0.20 val-020
172.16.0.21 val-021
172.16.0.22 val-022
172.16.0.23 val-023
172.16.0.24 val-024
172.16.0.25 val-025
172.16.0.26 val-026
172.16.0.27 val-027
172.16.0.28 val-028
172.16.0.29 val-029
172.16.0.30 val-030
172.16.0.31 val-031
172.16.0.32 val-032
172.16.0.33 val-033
172.16.0.34 val-034
172.16.0.35 val-035
172.16.0.36 val-036
172.16.0.37 val-037
172.16.0.38 val-038
172.16.0.39 val-039
172.16.0.40 val-040
172.16.0.41 val-041
172.16.0.42 val-042
172.16.0.43 val-043
172.16.0.44 val-044
172.16.0.45 val-045
172.16.0.46 val-046
172.16.0.47 val-047
172.16.0.48 val-048
172.16.0.49 val-049
172.16.0.50 val-050
172.16.0.51 val-051
172.16.0.52 val-052
172.16.0.53 val-053
172.16.0.54 val-054
172.16.0.55 val-055
172.16.0.56 val-056
172.16.0.57 val-057
172.16.0.58 val-058
172.16.0.59 val-059
172.16.0.60 val-060
172.16.0.61 val-061
172.16.0.62 val-062
172.16.0.63 val-063
172.16.0.64 val-064
172.16.0.65 val-065
172.16.0.66 val-066
172.16.0.67 val-067
172.16.0.68 val-068
172.16.0.69 val-069
172.16.0.70 val-070
172.16.0.71 val-071
172.16.0.72 val-072
172.16.0.73 val-073
172.16.0.74 val-074
172.16.0.75 val-075
172.16.0.76 val-076
172.16.0.77 val-077
172.16.0.78 val-078
172.16.0.79 val-079
172.16.0.80 val-080
172.16.0.81 val-081
172.16.0.82 val-082
172.16.0.83 val-083
172.16.0.84 val-084
172.16.0.85 val-085
172.16.0.86 val-086
172.16.0.87 val-087
172.16.0.88 val-088
172.16.0.89 val-089
172.16.0.90 val-090
172.16.0.91 val-091
172.16.0.92 val-092
172.16.0.93 val-093
172.16.0.94 val-094
172.16.0.95 val-095
172.16.0.96 val-096
172.16.0.97 val-097
172.16.0.98 val-098
172.16.0.99 val-099
172.16.0.100 val-100
172.16.0.101 val-101
172.16.0.102 val-102
172.16.0.103 val-103
172.16.0.104 val-104
172.16.0.105 val-105
172.16.0.106 val-106
172.16.0.107 val-107
172.16.0.108 val-108
172.16.0.109 val-109
172.16.0.110 val-110
172.16.0.111 val-111
172.16.0.112 val-112
172.16.0.113 val-113
172.16.0.114 val-114
172.16.0.115 val-115
172.16.0.116 val-116
172.16.0.117 val-117
172.16.0.118 val-118
172.16.0.119 val-119
172.16.0.120 val-120
172.16.0.121 val-121
172.16.0.122 val-122
172.16.0.123 val-123
172.16.0.124 val-124
172.16.0.125 val-125
172.16.0.126 val-126
172.16.0.127 val-127
172.16.0.128 val-128
172.16.0.129 val-129
172.16.0.130 val-130
172.16.0.131 val-131
172.16.0.132 val-132
172.16.0.133 val-133
172.16.0.134 val-134
172.16.0.135 val-135
172.16.0.136 val-136
172.16.0.137 val-137
172.16.0.138 val-138
172.16.0.139 val-139
172.16.0.140 val-140
172.16.0.141 val-141
172.16.0.142 val-142
172.16.0.143 val-143
172.16.0.144 val-144
172.16.0.145 val-145
172.16.0.146 val-146
172.16.0.147 val-147
172.16.0.148 val-148
172.16.0.149 val-149
172.16.0.150 val-150
172.16.0.151 val-151
172.16.0.152 val-152
172.16.0.153 val-153
172.16.0.154 val-154
172.16.0.155 val-155
172.16.0.156 val-156
172.16.0.157 val-157
172.16.0.158 val-158
172.16.0.159 val-159
172.16.0.160 val-160
172.16.0.161 val-161
172.16.0.162 val-162
172.16.0.163 val-163
172.16.0.164 val-164
172.16.0.165 val-165
172.16.0.166 val-166
172.16.0.167 val-167
172.16.0.168 val-168
172.16.0.169 val-169
172.16.0.170 val-170
172.16.0.171 val-171
172.16.0.172 val-172
172.16.0.173 val-173
172.16.0.174 val-174
172.16.0.175 val-175
172.16.0.176 val-176
172.16.0.177 val-177
172.16.0.178 val-178
172.16.0.179 val-179
172.16.0.180 val-180
172.16.0.181 val-181
172.16.0.182 val-182
172.16.0.183 val-183
172.16.0.184 val-184
172.16.0.185 val-185
172.16.0.186 val-186
172.16.0.187 val-187
172.16.0.188 val-188
172.16.0.189 val-189
172.16.0.190 val-190
172.16.0.191 val-191
172.16.0.192 val-192
172.16.0.193 val-193
172.16.0.194 val-194
172.16.0.195 val-195
172.16.0.196 val-196
172.16.0.197 val-197
172.16.0.198 val-198
172.16.0.199 val-199
172.16.0.200 val-200
172.16.0.201 val-201
172.16.0.202 val-202
172.16.0.203 val-203
172.16.0.204 val-204
172.16.0.205 val-205
172.16.0.206 val-206
172.16.0.207 val-207
172.16.0.208 val-208
172.16.0.209 val-209
172.16.0.210 val-210
172.16.0.211 val-211
172.16.0.212 val-212
172.16.0.213 val-213
172.16.0.214 val-214
172.16.0.215 val-215
172.16.0.216 val-216
172.16.0.217 val-217
172.16.0.218 val-218
172.16.0.219 val-219
172.16.0.220 val-220
172.16.0.221 val-221
172.16.0.222 val-222
172.16.0.223 val-223
172.16.0.224 val-224
172.16.0.225 val-225
172.16.0.226 val-226
172.16.0.227 val-227
172.16.0.228 val-228
172.16.0.229 val-229
172.16.0.230 val-230
172.16.0.231 val-231
172.16.0.232 val-232
172.16.0.233 val-233
172.16.0.234 val-234
172.16.0.235 val-235
172.16.0.236 val-236
172.16.0.237 val-237
172.16.0.238 val-238
172.16.0.239 val-239
172.16.0.240 val-240
172.16.0.241 val-241
172.16.0.242 val-242
172.16.0.243 val-243
172.16.0.244 val-244
172.16.0.245 val-245
172.16.0.246 val-246
172.16.0.247 val-247
172.16.0.248 val-248
172.16.0.249 val-249
172.16.0.250 val-250
172.16.0.251 val-251
172.16.0.252 val-252
172.16.0.253 val-253
172.16.0.254 val-254
172.16.1.10 val-255
172.16.1.11 val-256
172.16.1.12 val-257
172.16.1.13 val-258
172.16.1.14 val-259
172.16.1.15 val-260
172.16.1.16 val-261
172.16.1.17 val-262
172.16.1.18 val-263
172.16.1.19 val-264
172.16.1.20 val-265
172.16.1.21 val-266
172.16.1.22 val-267
172.16.1.23 val-268
172.16.1.24 val-269
172.16.1.25 val-270
172.16.1.26 val-271
172.16.1.27 val-272
172.16.1.28 val-273
172.16.1.29 val-274
EOF