.class final Lsun/net/www/http/KeepAliveStreamCleaner$1;
.super Ljava/lang/Object;
.source "KeepAliveStreamCleaner.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/http/KeepAliveStreamCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "http.KeepAlive.remainingData"

    sget v1, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_DATA_REMAINING:I

    invoke-static {v0, v1}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveStreamCleaner$1;->run()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
