.class public Lcom/android/incallui/service/vt/VideoCallConfig$CapabilityType;
.super Ljava/lang/Object;
.source "VideoCallConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapabilityType"
.end annotation


# static fields
.field public static final EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final EPDG:Ljava/lang/String; = "epdg"

.field public static final RX_HELD:Ljava/lang/String; = "rx_held"

.field public static final THREE_WIDGET:Ljava/lang/String; = "three_widget"

.field public static final TX_HOLD:Ljava/lang/String; = "tx_hold"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
