# $NetBSD: buildlink3.mk,v 1.9 2025/07/08 21:16:00 schmonz Exp $

BUILDLINK_TREE+=	s6-dns

.if !defined(S6_DNS_BUILDLINK3_MK)
S6_DNS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.s6-dns+=	s6-dns>=2.4.1.0nb1
BUILDLINK_PKGSRCDIR.s6-dns?=	../../net/s6-dns
BUILDLINK_INCDIRS.s6-dns+=	include/s6-dns
BUILDLINK_LIBDIRS.s6-dns+=	lib/s6-dns
.endif	# S6_DNS_BUILDLINK3_MK

BUILDLINK_TREE+=	-s6-dns
