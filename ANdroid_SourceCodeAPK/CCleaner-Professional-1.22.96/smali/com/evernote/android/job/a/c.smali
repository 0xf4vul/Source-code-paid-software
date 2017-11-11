.class public final enum Lcom/evernote/android/job/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/evernote/android/job/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/evernote/android/job/a/c;

.field public static final enum b:Lcom/evernote/android/job/a/c;

.field public static final enum c:Lcom/evernote/android/job/a/c;

.field public static final enum d:Lcom/evernote/android/job/a/c;

.field public static final enum e:Lcom/evernote/android/job/a/c;

.field private static volatile h:Z

.field private static final synthetic j:[Lcom/evernote/android/job/a/c;


# instance fields
.field public final f:Z

.field public final g:Z

.field private volatile i:Lcom/evernote/android/job/g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "V_24"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->a:Lcom/evernote/android/job/a/c;

    .line 66
    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "V_21"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->b:Lcom/evernote/android/job/a/c;

    .line 70
    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "V_19"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    .line 74
    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "V_14"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    .line 78
    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "GCM"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/evernote/android/job/a/c;

    sget-object v1, Lcom/evernote/android/job/a/c;->a:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evernote/android/job/a/c;->b:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evernote/android/job/a/c;->j:[Lcom/evernote/android/job/a/c;

    .line 82
    sput-boolean v3, Lcom/evernote/android/job/a/c;->h:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-boolean p3, p0, Lcom/evernote/android/job/a/c;->f:Z

    .line 122
    iput-boolean p4, p0, Lcom/evernote/android/job/a/c;->g:Z

    .line 123
    return-void
.end method

.method public static a(Landroid/content/Context;Z)Lcom/evernote/android/job/a/c;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/evernote/android/job/a/c;->a:Lcom/evernote/android/job/a/c;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/evernote/android/job/a/c;->a:Lcom/evernote/android/job/a/c;

    .line 245
    :goto_0
    return-object v0

    .line 238
    :cond_0
    sget-object v0, Lcom/evernote/android/job/a/c;->b:Lcom/evernote/android/job/a/c;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    sget-object v0, Lcom/evernote/android/job/a/c;->b:Lcom/evernote/android/job/a/c;

    goto :goto_0

    .line 240
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    sget-object v0, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    goto :goto_0

    .line 242
    :cond_2
    sget-object v0, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    sget-object v0, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    goto :goto_0

    .line 245
    :cond_3
    sget-object v0, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 185
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 189
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 195
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 209
    :goto_0
    return v0

    .line 201
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 202
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 206
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 216
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 220
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/android/job/a/c;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/evernote/android/job/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a/c;

    return-object v0
.end method

.method public static values()[Lcom/evernote/android/job/a/c;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/evernote/android/job/a/c;->j:[Lcom/evernote/android/job/a/c;

    invoke-virtual {v0}, [Lcom/evernote/android/job/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/android/job/a/c;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/evernote/android/job/a/c;->i:Lcom/evernote/android/job/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    sget-object v2, Lcom/evernote/android/job/a/c$1;->a:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/a/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    const-class v2, Lcom/evernote/android/job/v21/PlatformJobService;

    const-string/jumbo v3, "android.permission.BIND_JOB_SERVICE"

    invoke-static {p1, v2, v3}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 136
    goto :goto_0

    .line 138
    :pswitch_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const-class v2, Lcom/evernote/android/job/v21/PlatformJobService;

    const-string/jumbo v3, "android.permission.BIND_JOB_SERVICE"

    invoke-static {p1, v2, v3}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 140
    :pswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_3

    const-class v2, Lcom/evernote/android/job/v14/PlatformAlarmService;

    invoke-static {p1, v2}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-class v2, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;

    .line 141
    invoke-static {p1, v2}, Lcom/evernote/android/job/a/c;->b(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 140
    goto :goto_0

    .line 143
    :pswitch_3
    sget-boolean v2, Lcom/evernote/android/job/a/c;->h:Z

    if-nez v2, :cond_0

    const-class v2, Lcom/evernote/android/job/v14/PlatformAlarmService;

    .line 144
    invoke-static {p1, v2}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-class v2, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;

    invoke-static {p1, v2}, Lcom/evernote/android/job/a/c;->b(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 143
    goto :goto_0

    .line 146
    :pswitch_4
    invoke-static {p1}, Lcom/evernote/android/job/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Lcom/evernote/android/job/g;
    .locals 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/a/c;->i:Lcom/evernote/android/job/g;

    if-nez v0, :cond_0

    .line 1154
    sget-object v0, Lcom/evernote/android/job/a/c$1;->a:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/a/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1156
    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/evernote/android/job/c/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/c/a;-><init>(Landroid/content/Context;)V

    .line 173
    :goto_0
    iput-object v0, p0, Lcom/evernote/android/job/a/c;->i:Lcom/evernote/android/job/g;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/a/c;->i:Lcom/evernote/android/job/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1158
    :pswitch_1
    :try_start_2
    new-instance v0, Lcom/evernote/android/job/v21/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/v21/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1160
    :pswitch_2
    new-instance v0, Lcom/evernote/android/job/b/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/b/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1162
    :pswitch_3
    new-instance v0, Lcom/evernote/android/job/v14/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/v14/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1164
    :pswitch_4
    new-instance v0, Lcom/evernote/android/job/gcm/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/gcm/a;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
