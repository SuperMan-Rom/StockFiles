.class public Lcom/thoughtworks/xstream/mapper/SecurityMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "SecurityMapper.java"


# instance fields
.field private final permissions:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 37
    const/4 v0, 0x0

    check-cast v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/mapper/SecurityMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;[Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;[Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 2
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "permissions"    # [Lcom/thoughtworks/xstream/security/TypePermission;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 49
    if-nez p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    .line 52
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 2
    .param p1, "permission"    # Lcom/thoughtworks/xstream/security/TypePermission;

    .prologue
    .line 65
    sget-object v0, Lcom/thoughtworks/xstream/security/NoTypePermission;->NONE:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/thoughtworks/xstream/security/AnyTypePermission;->ANY:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 72
    .local v2, "type":Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/security/TypePermission;

    .line 74
    .local v1, "permission":Lcom/thoughtworks/xstream/security/TypePermission;
    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/security/TypePermission;->allows(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    return-object v2

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "permission":Lcom/thoughtworks/xstream/security/TypePermission;
    :cond_1
    new-instance v3, Lcom/thoughtworks/xstream/security/ForbiddenClassException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/security/ForbiddenClassException;-><init>(Ljava/lang/Class;)V

    throw v3
.end method
