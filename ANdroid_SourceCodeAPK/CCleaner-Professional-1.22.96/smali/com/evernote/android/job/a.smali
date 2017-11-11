.class public abstract Lcom/evernote/android/job/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/a$a;,
        Lcom/evernote/android/job/a$b;
    }
.end annotation


# static fields
.field private static final a:Ld/a/a/a/c;


# instance fields
.field e:Lcom/evernote/android/job/a$a;

.field f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/content/Context;

.field h:Z

.field i:Z

.field j:J

.field k:Lcom/evernote/android/job/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "Job"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/a;->a:Ld/a/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/evernote/android/job/a;->j:J

    .line 93
    sget-object v0, Lcom/evernote/android/job/a$b;->b:Lcom/evernote/android/job/a$b;

    iput-object v0, p0, Lcom/evernote/android/job/a;->k:Lcom/evernote/android/job/a$b;

    return-void
.end method

.method protected static b()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method


# virtual methods
.method final a()Lcom/evernote/android/job/a$b;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    .line 1220
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 1562
    iget-object v0, v0, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 2213
    iget-object v0, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2474
    iget-boolean v0, v0, Lcom/evernote/android/job/i$b;->i:Z

    .line 1149
    if-eqz v0, :cond_13

    .line 3220
    iget-object v0, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 3562
    iget-object v0, v0, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 4220
    iget-object v0, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 4474
    iget-boolean v0, v0, Lcom/evernote/android/job/i$b;->j:Z

    .line 3175
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->c()Landroid/content/Context;

    move-result-object v0

    .line 5055
    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 5056
    if-eqz v0, :cond_2

    .line 5062
    const-string/jumbo v3, "plugged"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5063
    if-eq v0, v2, :cond_0

    if-eq v0, v6, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    .line 3175
    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 1153
    :goto_1
    if-nez v0, :cond_4

    .line 1154
    sget-object v0, Lcom/evernote/android/job/a;->a:Ld/a/a/a/c;

    const-string/jumbo v2, "Job requires charging, reschedule"

    .line 6061
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 122
    :goto_2
    if-eqz v0, :cond_14

    .line 13220
    iget-object v0, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 123
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/a;->a(Lcom/evernote/android/job/a$a;)Lcom/evernote/android/job/a$b;

    move-result-object v0

    move-object v1, p0

    .line 125
    :goto_3
    iput-object v0, v1, Lcom/evernote/android/job/a;->k:Lcom/evernote/android/job/a$b;

    .line 128
    iget-object v0, p0, Lcom/evernote/android/job/a;->k:Lcom/evernote/android/job/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/android/job/a;->j:J

    .line 128
    return-object v0

    :cond_2
    move v0, v1

    .line 5063
    goto :goto_0

    :cond_3
    move v0, v1

    .line 3175
    goto :goto_1

    .line 6220
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 6562
    iget-object v0, v0, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 7227
    iget-object v0, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 7474
    iget-boolean v0, v0, Lcom/evernote/android/job/i$b;->k:Z

    .line 6183
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->c()Landroid/content/Context;

    move-result-object v0

    .line 8070
    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 8071
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_8

    .line 8077
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    move v0, v2

    .line 6183
    :goto_4
    if-eqz v0, :cond_c

    :cond_6
    move v0, v2

    .line 1157
    :goto_5
    if-nez v0, :cond_d

    .line 1158
    sget-object v0, Lcom/evernote/android/job/a;->a:Ld/a/a/a/c;

    const-string/jumbo v2, "Job requires device to be idle, reschedule"

    .line 9061
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 1159
    goto :goto_2

    :cond_7
    move v0, v1

    .line 8077
    goto :goto_4

    .line 8078
    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_a

    .line 8079
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_4

    .line 8081
    :cond_a
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v1

    .line 6183
    goto :goto_5

    .line 9220
    :cond_d
    iget-object v0, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 9562
    iget-object v0, v0, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 10234
    iget-object v0, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 10474
    iget-object v0, v0, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    .line 9192
    sget-object v3, Lcom/evernote/android/job/i$c;->a:Lcom/evernote/android/job/i$c;

    if-ne v0, v3, :cond_e

    move v0, v2

    .line 1161
    :goto_6
    if-nez v0, :cond_13

    .line 1162
    sget-object v0, Lcom/evernote/android/job/a;->a:Ld/a/a/a/c;

    const-string/jumbo v2, "Job requires network to be %s, but was %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 11220
    iget-object v5, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 11562
    iget-object v5, v5, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 12234
    iget-object v5, v5, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 12474
    iget-object v5, v5, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    .line 1162
    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1163
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->c()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/evernote/android/job/a/a;->a(Landroid/content/Context;)Lcom/evernote/android/job/i$c;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1162
    invoke-virtual {v0, v2, v3}, Ld/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1164
    goto/16 :goto_2

    .line 9196
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/evernote/android/job/a/a;->a(Landroid/content/Context;)Lcom/evernote/android/job/i$c;

    move-result-object v3

    .line 9198
    sget-object v4, Lcom/evernote/android/job/a$1;->a:[I

    invoke-virtual {v0}, Lcom/evernote/android/job/i$c;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 9206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/android/job/a;->j:J

    throw v0

    .line 9200
    :pswitch_0
    :try_start_2
    sget-object v0, Lcom/evernote/android/job/i$c;->a:Lcom/evernote/android/job/i$c;

    if-eq v3, v0, :cond_f

    move v0, v2

    goto :goto_6

    :cond_f
    move v0, v1

    goto :goto_6

    .line 9202
    :pswitch_1
    sget-object v0, Lcom/evernote/android/job/i$c;->d:Lcom/evernote/android/job/i$c;

    if-eq v3, v0, :cond_10

    sget-object v0, Lcom/evernote/android/job/i$c;->c:Lcom/evernote/android/job/i$c;

    if-ne v3, v0, :cond_11

    :cond_10
    move v0, v2

    goto :goto_6

    :cond_11
    move v0, v1

    goto :goto_6

    .line 9204
    :pswitch_2
    sget-object v0, Lcom/evernote/android/job/i$c;->c:Lcom/evernote/android/job/i$c;

    if-ne v3, v0, :cond_12

    move v0, v2

    goto :goto_6

    :cond_12
    move v0, v1

    goto :goto_6

    :cond_13
    move v0, v2

    .line 1167
    goto/16 :goto_2

    .line 14220
    :cond_14
    iget-object v0, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 14391
    iget-object v0, v0, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    invoke-virtual {v0}, Lcom/evernote/android/job/i;->c()Z

    move-result v0

    .line 125
    if-eqz v0, :cond_15

    sget-object v0, Lcom/evernote/android/job/a$b;->b:Lcom/evernote/android/job/a$b;

    move-object v1, p0

    goto/16 :goto_3

    :cond_15
    sget-object v0, Lcom/evernote/android/job/a$b;->c:Lcom/evernote/android/job/a$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, p0

    goto/16 :goto_3

    .line 9198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract a(Lcom/evernote/android/job/a$a;)Lcom/evernote/android/job/a$b;
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/android/job/a;->h:Z

    .line 250
    iput-boolean p1, p0, Lcom/evernote/android/job/a;->i:Z

    .line 252
    :cond_0
    return-void
.end method

.method protected final c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/evernote/android/job/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 237
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evernote/android/job/a;->g:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/evernote/android/job/a;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 331
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    .line 332
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 334
    :cond_2
    check-cast p1, Lcom/evernote/android/job/a;

    .line 336
    iget-object v0, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    iget-object v1, p1, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/a$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    invoke-virtual {v0}, Lcom/evernote/android/job/a$a;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "job{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 15374
    iget-object v1, v1, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 16134
    iget-object v1, v1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 16474
    iget v1, v1, Lcom/evernote/android/job/i$b;->a:I

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/a;->k:Lcom/evernote/android/job/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/evernote/android/job/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", periodic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 17391
    iget-object v1, v1, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    invoke-virtual {v1}, Lcom/evernote/android/job/i;->c()Z

    move-result v1

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 18382
    iget-object v1, v1, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 19142
    iget-object v1, v1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 19474
    iget-object v1, v1, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    return-object v0
.end method
