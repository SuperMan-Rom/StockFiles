.class Ljava/lang/ProcessEnvironment$StringValues$1;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessEnvironment$StringValues;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/lang/ProcessEnvironment$StringValues;


# direct methods
.method constructor <init>(Ljava/lang/ProcessEnvironment$StringValues;)V
    .locals 1
    .param p1, "this$1"    # Ljava/lang/ProcessEnvironment$StringValues;

    .prologue
    .line 370
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->this$1:Ljava/lang/ProcessEnvironment$StringValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->this$1:Ljava/lang/ProcessEnvironment$StringValues;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringValues;->-get0(Ljava/lang/ProcessEnvironment$StringValues;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    .line 370
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringValues$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$ExternalData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
