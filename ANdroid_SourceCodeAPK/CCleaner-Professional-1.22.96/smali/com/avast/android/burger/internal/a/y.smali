.class public final Lcom/avast/android/burger/internal/a/y;
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
        "Lcom/avast/android/c/a/c;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/avast/android/burger/internal/a/x;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/avast/android/burger/internal/a/y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/internal/a/y;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/avast/android/burger/internal/a/x;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/x;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/avast/android/burger/internal/a/y;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/y;->b:Lcom/avast/android/burger/internal/a/x;

    .line 23
    sget-boolean v0, Lcom/avast/android/burger/internal/a/y;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/avast/android/burger/internal/a/y;->c:Ljavax/a/a;

    .line 25
    return-void
.end method

.method public static a(Lcom/avast/android/burger/internal/a/x;Ljavax/a/a;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/x;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/avast/android/c/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/avast/android/burger/internal/a/y;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/burger/internal/a/y;-><init>(Lcom/avast/android/burger/internal/a/x;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1029
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/y;->c:Ljavax/a/a;

    .line 1030
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1047
    new-instance v1, Lcom/avast/android/burger/internal/d/d;

    invoke-direct {v1, v0}, Lcom/avast/android/burger/internal/d/d;-><init>(Landroid/content/Context;)V

    .line 1030
    const-string/jumbo v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1029
    invoke-static {v1, v0}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/c/a/c;

    .line 10
    return-object v0
.end method
