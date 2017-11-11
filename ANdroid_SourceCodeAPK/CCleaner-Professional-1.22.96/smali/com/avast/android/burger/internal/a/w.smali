.class public final Lcom/avast/android/burger/internal/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b",
        "<",
        "Lcom/avast/android/burger/internal/c/i;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/avast/android/burger/internal/a/v;

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/internal/config/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/avast/android/burger/internal/a/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/internal/a/w;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/avast/android/burger/internal/a/v;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/v;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/internal/config/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lcom/avast/android/burger/internal/a/w;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/w;->b:Lcom/avast/android/burger/internal/a/v;

    .line 28
    sget-boolean v0, Lcom/avast/android/burger/internal/a/w;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_1
    iput-object p2, p0, Lcom/avast/android/burger/internal/a/w;->c:Ljavax/a/a;

    .line 30
    sget-boolean v0, Lcom/avast/android/burger/internal/a/w;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_2
    iput-object p3, p0, Lcom/avast/android/burger/internal/a/w;->d:Ljavax/a/a;

    .line 32
    return-void
.end method

.method public static a(Lcom/avast/android/burger/internal/a/v;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/v;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/internal/config/a;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/avast/android/burger/internal/c/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/avast/android/burger/internal/a/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/avast/android/burger/internal/a/w;-><init>(Lcom/avast/android/burger/internal/a/v;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1036
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/w;->c:Ljavax/a/a;

    .line 1037
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/avast/android/burger/internal/a/w;->d:Ljavax/a/a;

    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/burger/internal/config/a;

    .line 2032
    new-instance v2, Lcom/avast/android/burger/internal/c/a;

    invoke-direct {v2, v0, v1}, Lcom/avast/android/burger/internal/c/a;-><init>(Landroid/content/Context;Lcom/avast/android/burger/internal/config/a;)V

    .line 1037
    const-string/jumbo v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1036
    invoke-static {v2, v0}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/c/i;

    .line 11
    return-object v0
.end method
