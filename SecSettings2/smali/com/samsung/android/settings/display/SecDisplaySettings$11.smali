.class Lcom/samsung/android/settings/display/SecDisplaySettings$11;
.super Landroid/database/ContentObserver;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap4(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnabledAppearance(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    const v2, 0x7f0b02ca

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap11(Lcom/samsung/android/settings/display/SecDisplaySettings;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
