.class final Ljava/util/logging/Logger$LoggerHelper$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/Logger$LoggerHelper;->getBooleanProperty(Ljava/lang/String;)Z
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$key"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Ljava/util/logging/Logger$LoggerHelper$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/util/logging/Logger$LoggerHelper$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Ljava/util/logging/Logger$LoggerHelper$1;->val$key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
