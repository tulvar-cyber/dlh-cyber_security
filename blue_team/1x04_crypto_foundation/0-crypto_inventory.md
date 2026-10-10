# MedDefense - Data Protection Map

## Data Protection Matrix

| Data Category           | At Rest                                | In Transit                              | In Use                                |
|------------------------------------------------------------------|-----------------------------------------|---------------------------------------|
| Patient medical records | Prot: None, Ev: Aud notes, Sta: Absent | Prot: ssl=on, Ev: Aud notes, Sta: Weak  | Prot: None, Ev: Aud.notes, Sta: Absent|
| Financial/billing data  | Prot: None, Ev: Aud notes, Sta: Absent | Prot: None, Ev: Aud notes, Sta: Absent  | Prot: None, Ev: crypto-miner observatio, Sta:Absent |
| Medical images          | Prot: None, Ev: Aud notes, Sta: Absent | Prot: None, Ev: Aud notes, Sta: Absent  | Prot: None, Ev: Audit notes, Sta: Absent |
| Credentials             | Prot: MD4, RC4 enabled, Ev: Finding 018, Sta: Weak | Prot: LDAP not encrypted, Kerberos with RC4/DES, Ev: Finding 007, Sta: Weak | Protection: RC4, Ev: Finding 018, Sta: Weak |
| Backup data (NAS-01)    | Prot: None, Ev: Aud notes, Sta: Absent | Prot: None, Ev: Aud notes, Sta: Absent  | Prot: N/A   Ev: N/A Sta: N/A          |
| Email (O365)            | Prot: BitLocker + per-mailbox encryption (Microsoft-managed), Ev: Aud notes, Sta: Adequate | Prot: TLS 1.2, Ev: Aud notes, Sta: Adequate, Prot: None,Ev: Aud notes, Sta: Absent |
| VPN traffic             | Prot: N/A,  Ev: N/A<, Sta: N/A         | Protection: AES-256 + SHA-256 + IKEv2 + DH Group 14, Ev: Aud notes,Sta: Adequate | Protection:Prot:? Evi: Audit notes "firmware update history unknown, Sta: Weak |

---

## Gap Summary

| Status | Count | Cells |
|--------|-------|-------|
| **Adequate** | 3 | Email (At Rest, In Transit), VPN (In Transit) |
| **Weak** | 5 | Patient (In Transit), Credentials (At Rest, In Transit, In Use), VPN (In Use) |
| **Absent** | 11 | Patient (At Rest, In Use), Financial (todos), Medical Images (todos), Backups (At Rest, In Transit), Email (In Use) |
| **N/A** | 2 | Backups (In Use), VPN (At Rest) |
| **Total** | 21 | |

**Coverage: 3 / 19 aplicables = 15.8%**

