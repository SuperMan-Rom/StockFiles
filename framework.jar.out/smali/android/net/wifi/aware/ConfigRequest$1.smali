.class final Landroid/net/wifi/aware/ConfigRequest$1;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/aware/ConfigRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    new-instance v0, Landroid/net/wifi/aware/ConfigRequest;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/ConfigRequest;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/aware/ConfigRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->newArray(I)[Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v0

    return-object v0
.end method
