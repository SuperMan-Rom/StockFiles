.class Ljava/security/Provider$UString;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UString"
.end annotation


# instance fields
.field final lowerString:Ljava/lang/String;

.field final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    iput-object p1, p0, Ljava/security/Provider$UString;->string:Ljava/lang/String;

    .line 927
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    .line 925
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 935
    if-ne p0, p1, :cond_0

    .line 936
    const/4 v1, 0x1

    return v1

    .line 938
    :cond_0
    instance-of v1, p1, Ljava/security/Provider$UString;

    if-nez v1, :cond_1

    .line 939
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 941
    check-cast v0, Ljava/security/Provider$UString;

    .line 942
    .local v0, "other":Ljava/security/Provider$UString;
    iget-object v1, p0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    iget-object v2, v0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Ljava/security/Provider$UString;->string:Ljava/lang/String;

    return-object v0
.end method
