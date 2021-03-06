.class public Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;,
        Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;
    }
.end annotation


# instance fields
.field private mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mCalls:Lcom/android/settings/SecDropDownPreference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mDisableListeners:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEvents:Landroid/support/v14/preference/SecSwitchPreference;

.field private mId:Ljava/lang/String;

.field private mMessages:Lcom/android/settings/SecDropDownPreference;

.field private mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mReminders:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRepeatCallers:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mUpdateZenStatusControlsWithDelay:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ZI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getNewPriorityCategories(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->savePolicy(IIII)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setCustomPreferenceVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setEnablePreference(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setZenMode(ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->updateControls()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->updateRadioControls()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static addSources(Lcom/android/settings/SecDropDownPreference;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/SecDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f122224

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/android/settings/SecDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f122225

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/android/settings/SecDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f122227

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0}, Lcom/android/settings/SecDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121c72

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f15014b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "no_exception"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "alarm_only"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$3;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "custom"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$4;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "reminders"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$5;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$6;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "messages"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->addSources(Lcom/android/settings/SecDropDownPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v1, "calls"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->addSources(Lcom/android/settings/SecDropDownPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$8;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v1, "repeat_callers"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f122231

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.calendar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f122223

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_2
    new-instance v1, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;

    invoke-direct {v1, p0, v7}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mUpdateZenStatusControlsWithDelay:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mUpdateZenStatusControlsWithDelay:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method private static defaultNewSchedule()Lcom/android/settings/notification/ZenRuleInfo;
    .locals 3

    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    sget-object v2, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v2, 0x16

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/4 v2, 0x7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    new-instance v0, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    const-string/jumbo v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    iput-object v2, v0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    return-object v0
.end method

.method private getNewPriorityCategories(ZI)I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz p1, :cond_0

    or-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private isInUpdateZenStatusControlWithDelayProgress()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mUpdateZenStatusControlsWithDelay:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mUpdateZenStatusControlsWithDelay:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPriorityCategoryEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private refreshRuleOrFinish()Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    sget-boolean v1, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->toastAndFinish()V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private savePolicy(IIII)V
    .locals 2

    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method private setCustomPreferenceVisibility(Z)V
    .locals 1

    const-string/jumbo v0, "custom_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "custom_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string/jumbo v0, "alarms"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "alarms"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_1
    const-string/jumbo v0, "repeat_callers"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "repeat_callers"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_2
    const-string/jumbo v0, "calls"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "calls"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_3
    const-string/jumbo v0, "messages"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "messages"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_4
    const-string/jumbo v0, "reminders"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "reminders"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_5
    const-string/jumbo v0, "events"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "events"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_6
    const-string/jumbo v0, "app_notifications"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "app_notifications"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_7
    return-void
.end method

.method private setEnablePreference(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/RadioPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/RadioPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/RadioPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method private setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toastAndFinish()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f122236

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 8

    const/16 v7, 0x8

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    if-eqz v2, :cond_0

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v6, v0}, Lcom/android/settings/SecDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/SecDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SecSwitchPreference;

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-eqz v2, :cond_8

    move v2, v4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_5
    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    return-void

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    move v2, v5

    goto :goto_1
.end method

.method private updateRadioControls()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRules:Ljava/util/Set;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRules:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Map$Entry;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v2, v6

    const-string/jumbo v9, "twschedule"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AutomaticZenRule;

    invoke-virtual {v5}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AutomaticZenRule;

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mId:Ljava/lang/String;

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const/16 v6, 0xad

    invoke-static {v5, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->defaultNewSchedule()Lcom/android/settings/notification/ZenRuleInfo;

    move-result-object v1

    const-string/jumbo v5, "twschedule"

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-boolean v7, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const/4 v5, 0x1

    iput v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget-object v5, v1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    new-instance v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isInUpdateZenStatusControlWithDelayProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mUpdateZenStatusControlsWithDelay:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DoNotDisturbAllowExceptions"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DoNotDisturbAllowExceptions"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->refreshRuleOrFinish()Z

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isInUpdateZenStatusControlWithDelayProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->updateControls()V

    :cond_0
    return-void
.end method
