.class public Lcom/cmdm/control/bean/SettingMobile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SettingMobile"
.end annotation


# static fields
.field public static xmlns:Ljava/lang/String;


# instance fields
.field public buddies:Lcom/cmdm/control/bean/PhoneNumList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "buddies"
    .end annotation
.end field

.field public contentText:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentText"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "description"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    sput-object v0, Lcom/cmdm/control/bean/SettingMobile;->xmlns:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "contentText"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/cmdm/control/bean/PhoneNumList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/PhoneNumList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/SettingMobile;->buddies:Lcom/cmdm/control/bean/PhoneNumList;

    .line 94
    iget-object v0, p0, Lcom/cmdm/control/bean/SettingMobile;->buddies:Lcom/cmdm/control/bean/PhoneNumList;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/PhoneNumList;->setBuddies(Ljava/util/List;)V

    .line 96
    invoke-static {p2}, Lcom/cmdm/control/util/client/Setting;->getSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/bean/SettingMobile;->setContentText(Ljava/lang/String;)V

    .line 98
    invoke-static {p3}, Lcom/cmdm/control/util/client/Setting;->getSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/bean/SettingMobile;->setDescription(Ljava/lang/String;)V

    .line 100
    const-string v0, "SettingMobile"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u7f6e\u5185\u5bb9\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {p3}, Lcom/cmdm/control/util/client/Setting;->getSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static getRelevanceRequest(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/cmdm/control/bean/SettingMobile;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmdm/control/bean/SettingMobile;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v0, "mRelevanceRequest":Lcom/cmdm/control/bean/SettingMobile;
    new-instance v1, Lcom/thoughtworks/xstream/XStream;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 111
    .local v1, "xstream":Lcom/thoughtworks/xstream/XStream;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/XStream;->autodetectAnnotations(Z)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cmdm/control/bean/SettingMobile;->xmlns:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "mStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 121
    const-string v2, "\u6211\u7684\u8bbe\u7f6e\u554a"

    const-string v3, "dddddddd"

    invoke-static {v0, v2, v3}, Lcom/cmdm/control/bean/SettingMobile;->getRelevanceRequest(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public getBuddies()Lcom/cmdm/control/bean/PhoneNumList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmdm/control/bean/SettingMobile;->buddies:Lcom/cmdm/control/bean/PhoneNumList;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cmdm/control/bean/SettingMobile;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmdm/control/bean/SettingMobile;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setBuddies(Lcom/cmdm/control/bean/PhoneNumList;)V
    .locals 0
    .param p1, "buddies"    # Lcom/cmdm/control/bean/PhoneNumList;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cmdm/control/bean/SettingMobile;->buddies:Lcom/cmdm/control/bean/PhoneNumList;

    .line 57
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentText"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cmdm/control/bean/SettingMobile;->contentText:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cmdm/control/bean/SettingMobile;->description:Ljava/lang/String;

    .line 87
    return-void
.end method
