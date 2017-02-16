.class Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/common/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_LOAD_DATA:I = 0x0

.field private static final MESSAGE_PROCESS_BROADCAST_INTENT:I = 0x1

.field private static final SAMPLE_CONTACT_URI:Landroid/net/Uri;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypesWithDataSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCheckFilterValidityRunnable:Ljava/lang/Runnable;

.field private mContactWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

.field private mGroupWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

.field private mInvitableAccountTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenerHandler:Landroid/os/Handler;

.field private mListenerThread:Landroid/os/HandlerThread;

.field private final mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 195
    const-wide/16 v0, 0x1

    const-string v2, "xxx"

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    .line 251
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;

    invoke-direct {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManager;-><init>()V

    .line 203
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 204
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 205
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 206
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 207
    sget-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 216
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 231
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mCheckFilterValidityRunnable:Ljava/lang/Runnable;

    .line 238
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 286
    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 287
    new-instance v2, Lcom/android/contacts/common/model/account/FallbackAccountType;

    invoke-direct {v2, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 289
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 291
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AccountChangeListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    .line 292
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 293
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 307
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    .line 310
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 327
    invoke-static {v5, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 329
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .local p3, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 545
    .local v0, "accountsForType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    if-nez v0, :cond_0

    .line 546
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 548
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-void
.end method

.method static findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 675
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 676
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v1

    .line 677
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountType;

    .line 678
    .local v3, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v3, :cond_0

    .line 679
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 681
    const-string v5, "AccountTypeManager"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 682
    const-string v5, "AccountTypeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inviteClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 683
    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 682
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_1
    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 686
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 689
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .end local v3    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 4
    .param p0, "auths"    # [Landroid/accounts/AuthenticatorDescription;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 558
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 559
    .local v0, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    .end local v0    # "auth":Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v0

    .line 558
    .restart local v0    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v0    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getAllInvitableAccountTypes()Ljava/util/Map;

    move-result-object v2

    .line 704
    .local v2, "allInvitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 705
    sget-object v7, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 738
    :goto_0
    return-object v7

    .line 708
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 709
    .local v6, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 711
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 712
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .line 713
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 716
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    sget-object v8, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Lcom/android/contacts/common/MoreContactUtils;->getInvitableIntent(Lcom/android/contacts/common/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 718
    .local v3, "invitableIntent":Landroid/content/Intent;
    if-nez v3, :cond_2

    .line 719
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 722
    :cond_2
    const/high16 v8, 0x10000

    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 724
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_3

    .line 727
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 733
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 734
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 738
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .end local v3    # "invitableIntent":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    goto :goto_0
.end method

.method private getAllInvitableAccountTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 631
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method ensureAccountsLoaded()V
    .locals 3

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 353
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 358
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 2
    .param p1, "accountTypeWithDataSet"    # Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 618
    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 620
    .local v0, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v0, :cond_0

    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    goto :goto_0

    .line 621
    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccountTypes(Z)Ljava/util/List;
    .locals 4
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 744
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 745
    .local v0, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    monitor-enter p0

    .line 746
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType;

    .line 747
    .local v1, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    .end local v1    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    return-object v0
.end method

.method public getAccounts(Z)Ljava/util/List;
    .locals 1
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 572
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method public getGroupWritableAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 580
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getKindOrFallback(Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 4
    .param p1, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 591
    const/4 v0, 0x0

    .line 594
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 598
    :cond_0
    if-nez v0, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {v1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 603
    :cond_1
    if-nez v0, :cond_2

    .line 604
    const-string v1, "AccountTypeManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 605
    const-string v1, "AccountTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_2
    return-object v0
.end method

.method public getUsableInvitableAccountTypes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 650
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->setCachedValue(Ljava/util/Map;)V

    .line 652
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 663
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->getCachedValue()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 658
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected loadAccountsInBackground()V
    .locals 38

    .prologue
    .line 371
    const-string v32, "ContactsPerf"

    const/16 v33, 0x3

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 372
    const-string v32, "ContactsPerf"

    const-string v33, "AccountTypeManager.loadAccountsInBackground start"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    new-instance v30, Landroid/util/TimingLogger;

    const-string v32, "AccountTypeManager"

    const-string v33, "loadAccountsInBackground"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v30, "timings":Landroid/util/TimingLogger;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v24

    .line 376
    .local v24, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 380
    .local v26, "startTimeWall":J
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 385
    .local v8, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 387
    .local v7, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 388
    .local v11, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 389
    .local v15, "contactWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 390
    .local v22, "groupWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v21

    .line 392
    .local v21, "extensionPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 394
    .local v12, "am":Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v29

    .line 395
    .local v29, "syncs":[Landroid/content/SyncAdapterType;
    invoke-virtual {v12}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 398
    .local v14, "auths":[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    const/16 v32, 0x0

    :goto_0
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_8

    aget-object v23, v29, v32

    .line 399
    .local v23, "sync":Landroid/content/SyncAdapterType;
    const-string v34, "com.android.contacts"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_2

    .line 398
    :cond_1
    :goto_1
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 406
    :cond_2
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 407
    .local v31, "type":Ljava/lang/String;
    move-object/from16 v0, v31

    invoke-static {v14, v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v13

    .line 408
    .local v13, "auth":Landroid/accounts/AuthenticatorDescription;
    if-nez v13, :cond_3

    .line 409
    const-string v34, "AccountTypeManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "No authenticator found for type="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", ignoring it."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 414
    :cond_3
    const-string v34, "com.google"

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 415
    new-instance v5, Lcom/android/contacts/common/model/account/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/common/model/account/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    .local v5, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :goto_2
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->isInitialized()Z

    move-result v34

    if-nez v34, :cond_7

    .line 427
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->isEmbedded()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 428
    new-instance v32, Ljava/lang/IllegalStateException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Problem initializing embedded type "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 429
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 416
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_4
    invoke-static/range {v31 .. v31}, Lcom/android/contacts/common/model/account/ExchangeAccountType;->isExchangeType(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 417
    new-instance v5, Lcom/android/contacts/common/model/account/ExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v31

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto :goto_2

    .line 418
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->isSamsungAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 420
    new-instance v5, Lcom/android/contacts/common/model/account/SamsungAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v31

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto :goto_2

    .line 422
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_6
    const-string v34, "AccountTypeManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Registering external account type="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", packageName="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v5, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_2

    .line 436
    :cond_7
    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iput-object v0, v5, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 437
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v5, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 438
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v5, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 440
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v7}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 444
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->getExtensionPackageNames()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 448
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v13    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v23    # "sync":Landroid/content/SyncAdapterType;
    .end local v31    # "type":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_c

    .line 449
    const-string v32, "AccountTypeManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Registering "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " extension packages"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_9
    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 451
    .local v20, "extensionPackage":Ljava/lang/String;
    new-instance v5, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    move/from16 v2, v34

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 453
    .local v5, "accountType":Lcom/android/contacts/common/model/account/ExternalAccountType;
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/ExternalAccountType;->isInitialized()Z

    move-result v33

    if-eqz v33, :cond_9

    .line 457
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/ExternalAccountType;->hasContactsMetadata()Z

    move-result v33

    if-nez v33, :cond_a

    .line 458
    const-string v33, "AccountTypeManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Skipping extension package "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " because"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " it doesn\'t have the CONTACTS_STRUCTURE metadata"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 462
    :cond_a
    iget-object v0, v5, Lcom/android/contacts/common/model/account/ExternalAccountType;->accountType:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 463
    const-string v33, "AccountTypeManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Skipping extension package "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " because"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " the CONTACTS_STRUCTURE metadata doesn\'t have the accountType"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " attribute"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 468
    :cond_b
    const-string v33, "AccountTypeManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Registering extension package account type="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v5, Lcom/android/contacts/common/model/account/ExternalAccountType;->accountType:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", dataSet="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v5, Lcom/android/contacts/common/model/account/ExternalAccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", packageName="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v7}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 475
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/ExternalAccountType;
    .end local v20    # "extensionPackage":Ljava/lang/String;
    :cond_c
    const-string v32, "Loaded account types"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v10

    .line 479
    .local v10, "accounts":[Landroid/accounts/Account;
    array-length v0, v10

    move/from16 v33, v0

    const/16 v32, 0x0

    :goto_4
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_11

    aget-object v4, v10, v32

    .line 480
    .local v4, "account":Landroid/accounts/Account;
    const-string v34, "com.android.contacts"

    .line 481
    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v34

    if-lez v34, :cond_f

    const/16 v28, 0x1

    .line 483
    .local v28, "syncable":Z
    :goto_5
    if-eqz v28, :cond_10

    .line 484
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 485
    .local v6, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    if-eqz v6, :cond_10

    .line 488
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_d
    :goto_6
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_10

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType;

    .line 489
    .local v5, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    new-instance v9, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v36, v0

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .local v9, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v35

    if-eqz v35, :cond_e

    .line 493
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_e
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v35

    if-eqz v35, :cond_d

    .line 496
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 481
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v6    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v9    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v28    # "syncable":Z
    :cond_f
    const/16 v28, 0x0

    goto :goto_5

    .line 479
    .restart local v28    # "syncable":Z
    :cond_10
    add-int/lit8 v32, v32, 0x1

    goto :goto_4

    .line 503
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v28    # "syncable":Z
    :cond_11
    sget-object v32, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v32

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 504
    sget-object v32, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v32

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 505
    sget-object v32, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 507
    const-string v32, "Loaded accounts"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 509
    monitor-enter p0

    .line 510
    :try_start_0
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 511
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 512
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 513
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v11, v8}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 516
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual/range {v30 .. v30}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 520
    .local v18, "endTimeWall":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v16

    .line 522
    .local v16, "endTime":J
    const-string v32, "AccountTypeManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Loaded meta-data for "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " account types, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    move-object/from16 v34, v0

    .line 523
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " accounts in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-long v34, v18, v26

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "ms(wall) "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-long v34, v16, v24

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "ms(cpu)"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 522
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    if-eqz v32, :cond_12

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 528
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 530
    :cond_12
    const-string v32, "ContactsPerf"

    const/16 v33, 0x3

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 531
    const-string v32, "ContactsPerf"

    const-string v33, "AccountTypeManager.loadAccountsInBackground finish"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mCheckFilterValidityRunnable:Ljava/lang/Runnable;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    return-void

    .line 516
    .end local v16    # "endTime":J
    .end local v18    # "endTimeWall":J
    :catchall_0
    move-exception v32

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v32
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    .line 345
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    return-void
.end method

.method public processBroadcastIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    return-void
.end method
