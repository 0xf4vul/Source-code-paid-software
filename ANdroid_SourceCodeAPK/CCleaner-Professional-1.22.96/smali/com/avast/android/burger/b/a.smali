.class public final Lcom/avast/android/burger/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avast/android/burger/b/b;


# static fields
.field private static final a:Ljava/security/SecureRandom;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/avast/android/burger/b/a;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string/jumbo v1, "burger"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    .line 86
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "firstRunDone"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/avast/android/burger/b/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    return-void
.end method

.method private c(J)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "burgerJob"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method private d(J)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "burgerJobRegular"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-wide/16 v2, -0x1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "deviceInfoFingerprint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "configVersion"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    return-void
.end method

.method public final b(J)V
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    .line 182
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "burgerJobRegular"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 183
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 184
    sget-object v2, Lcom/avast/android/burger/b/a;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v2

    long-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/avast/android/burger/b/a;->d(J)V

    .line 186
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "deviceInfoFingerprint"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 113
    iget-object v2, p0, Lcom/avast/android/burger/b/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "firstRunDone"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "configVersion"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "deviceInfoDone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "deviceInfoDone"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    return-void
.end method

.method public final f()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 142
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "burgerJob"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 143
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/avast/android/burger/b/a;->c(J)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/burger/b/a;->h()J

    move-result-wide v0

    .line 148
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/avast/android/burger/b/a;->c(J)V

    .line 158
    return-void
.end method

.method public final h()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 162
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "burgerJobRegular"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 163
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/avast/android/burger/b/a;->d(J)V

    .line 168
    :cond_0
    return-wide v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/avast/android/burger/b/a;->c(J)V

    .line 178
    return-void
.end method

.method public final j()Z
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "duplicateInstallRemovalComplete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "duplicateInstallRemovalComplete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    return-void
.end method

.method public final l()Z
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "referralReceiverEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/avast/android/burger/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "referralReceiverEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    return-void
.end method
