.class Ljava/net/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static volatile propRevealLocalAddr:Z

.field private static revealLocalAddress:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doRevealLocalAddress()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Ljava/net/NetUtil;->propRevealLocalAddr:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ljava/net/NetUtil;->revealLocalAddress:Z

    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-static {}, Ljava/net/NetUtil;->readRevealLocalAddr()Z

    move-result v0

    goto :goto_0
.end method

.method private static readRevealLocalAddr()Z
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 50
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    new-instance v2, Ljava/net/NetUtil$1;

    invoke-direct {v2}, Ljava/net/NetUtil$1;-><init>()V

    .line 53
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Ljava/net/NetUtil;->revealLocalAddress:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Ljava/net/NetUtil;->propRevealLocalAddr:Z

    .line 71
    :cond_0
    sget-boolean v2, Ljava/net/NetUtil;->revealLocalAddress:Z

    return v2

    .line 62
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
