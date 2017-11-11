.class final Lcom/evernote/android/job/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ld/a/a/a/c;

.field private static final b:Z

.field private static c:I

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "GcmAvailableHelper"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/a/b;->a:Ld/a/a/a/c;

    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/evernote/android/job/a/b;->c:I

    .line 36
    :try_start_0
    const-string/jumbo v0, "com.google.android.gms.gcm.GcmNetworkManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v0, 0x1

    .line 41
    :goto_0
    sput-boolean v0, Lcom/evernote/android/job/a/b;->b:Z

    .line 42
    return-void

    .line 39
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 46
    :try_start_0
    sget-boolean v2, Lcom/evernote/android/job/a/b;->d:Z

    if-nez v2, :cond_0

    .line 47
    const/4 v2, 0x1

    sput-boolean v2, Lcom/evernote/android/job/a/b;->d:Z

    .line 48
    sget-boolean v2, Lcom/evernote/android/job/a/b;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1103
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/evernote/android/job/gcm/a;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".PlatformGcmService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1107
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 1110
    packed-switch v4, :pswitch_data_0

    .line 51
    :cond_0
    :goto_0
    :try_start_2
    sget-boolean v2, Lcom/evernote/android/job/a/b;->b:Z

    if-eqz v2, :cond_1

    .line 52
    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 53
    invoke-static {p0}, Lcom/evernote/android/job/a/b;->b(Landroid/content/Context;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_1

    .line 58
    :goto_1
    return v0

    .line 1112
    :pswitch_0
    if-nez v2, :cond_0

    .line 1113
    const/4 v2, 0x2

    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v3, v5, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1114
    sget-object v2, Lcom/evernote/android/job/a/b;->a:Ld/a/a/a/c;

    const-string/jumbo v3, "GCM service disabled"

    .line 2049
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1127
    :catch_0
    move-exception v2

    .line 1129
    :try_start_4
    sget-object v3, Lcom/evernote/android/job/a/b;->a:Ld/a/a/a/c;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ld/a/a/a/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 57
    sget-object v2, Lcom/evernote/android/job/a/b;->a:Ld/a/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 3061
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v6}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 58
    goto :goto_1

    .line 1120
    :pswitch_1
    if-eqz v2, :cond_0

    .line 1121
    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_5
    invoke-virtual {v3, v5, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1122
    sget-object v2, Lcom/evernote/android/job/a/b;->a:Ld/a/a/a/c;

    const-string/jumbo v3, "GCM service enabled"

    .line 3049
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 51
    goto :goto_1

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 94
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE"

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v0, :cond_2

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 63
    sget v1, Lcom/evernote/android/job/a/b;->c:I

    if-gez v1, :cond_3

    .line 64
    const-class v1, Lcom/evernote/android/job/a/c;

    monitor-enter v1

    .line 65
    :try_start_0
    sget v2, Lcom/evernote/android/job/a/b;->c:I

    if-gez v2, :cond_2

    .line 66
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/evernote/android/job/a/b;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    const/4 v2, 0x1

    .line 70
    sput v2, Lcom/evernote/android/job/a/b;->c:I

    monitor-exit v1

    .line 86
    :goto_0
    return v0

    .line 73
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 76
    invoke-static {v2}, Lcom/evernote/android/job/a/b;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    const/4 v2, 0x1

    .line 78
    sput v2, Lcom/evernote/android/job/a/b;->c:I

    monitor-exit v1

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 81
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/evernote/android/job/a/b;->c:I

    .line 83
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_3
    sget v0, Lcom/evernote/android/job/a/b;->c:I

    goto :goto_0
.end method
