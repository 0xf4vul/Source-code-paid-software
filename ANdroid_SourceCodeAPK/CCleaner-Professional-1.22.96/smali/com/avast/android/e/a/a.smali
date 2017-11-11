.class public final Lcom/avast/android/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/avast/android/e/a/a;


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "retry-state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/e/a/a;->a:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/avast/android/e/a/a;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/avast/android/e/a/a;->b:Lcom/avast/android/e/a/a;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/avast/android/e/a/a;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/avast/android/e/a/a;->b:Lcom/avast/android/e/a/a;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/avast/android/e/a/a;

    invoke-direct {v0, p0}, Lcom/avast/android/e/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avast/android/e/a/a;->b:Lcom/avast/android/e/a/a;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/avast/android/e/a/a;->b:Lcom/avast/android/e/a/a;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "attempts-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1044
    iget-object v1, p0, Lcom/avast/android/e/a/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    return-void
.end method
