.class public final Lcom/avast/android/burger/internal/a/e;
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
        "Lcom/avast/a/b/a/a$m;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/avast/android/burger/internal/a/a;

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
            "Lcom/avast/android/burger/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/avast/android/burger/internal/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/internal/a/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/a;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lcom/avast/android/burger/internal/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/e;->b:Lcom/avast/android/burger/internal/a/a;

    .line 28
    sget-boolean v0, Lcom/avast/android/burger/internal/a/e;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_1
    iput-object p2, p0, Lcom/avast/android/burger/internal/a/e;->c:Ljavax/a/a;

    .line 30
    sget-boolean v0, Lcom/avast/android/burger/internal/a/e;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_2
    iput-object p3, p0, Lcom/avast/android/burger/internal/a/e;->d:Ljavax/a/a;

    .line 32
    return-void
.end method

.method public static a(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/a;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/b;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/avast/a/b/a/a$m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/avast/android/burger/internal/a/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/avast/android/burger/internal/a/e;-><init>(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 11
    .line 9036
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/e;->c:Ljavax/a/a;

    .line 9037
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/avast/android/burger/internal/a/e;->d:Ljavax/a/a;

    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/burger/b;

    .line 9149
    invoke-static {}, Lcom/avast/a/b/a/a$m;->e()Lcom/avast/a/b/a/a$m$a;

    move-result-object v2

    .line 9371
    iget v3, v1, Lcom/avast/android/burger/b;->g:I

    .line 9150
    invoke-virtual {v2, v3}, Lcom/avast/a/b/a/a$m$a;->a(I)Lcom/avast/a/b/a/a$m$a;

    .line 9380
    iget-object v3, v1, Lcom/avast/android/burger/b;->i:Ljava/lang/String;

    .line 9151
    if-nez v3, :cond_0

    .line 9152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Product version is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10380
    :cond_0
    iget-object v3, v1, Lcom/avast/android/burger/b;->i:Ljava/lang/String;

    .line 9154
    invoke-static {v3}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avast/a/b/a/a$m$a;->a(Lcom/google/a/c;)Lcom/avast/a/b/a/a$m$a;

    .line 10391
    iget v3, v1, Lcom/avast/android/burger/b;->j:I

    .line 9155
    invoke-virtual {v2, v3}, Lcom/avast/a/b/a/a$m$a;->d(I)Lcom/avast/a/b/a/a$m$a;

    .line 10399
    iget v3, v1, Lcom/avast/android/burger/b;->k:I

    .line 9156
    invoke-virtual {v2, v3}, Lcom/avast/a/b/a/a$m$a;->c(I)Lcom/avast/a/b/a/a$m$a;

    .line 9157
    sget-object v3, Lcom/avast/a/b/a/a$l;->e:Lcom/avast/a/b/a/a$l;

    invoke-virtual {v2, v3}, Lcom/avast/a/b/a/a$m$a;->a(Lcom/avast/a/b/a/a$l;)Lcom/avast/a/b/a/a$m$a;

    .line 9158
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 10484
    if-nez v3, :cond_1

    .line 10485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10487
    :cond_1
    iget v4, v2, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v2, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 10488
    iput-object v3, v2, Lcom/avast/a/b/a/a$m$a;->c:Ljava/lang/Object;

    .line 9159
    invoke-static {v0}, Lcom/avast/android/f/c/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/avast/a/b/a/a$m$a;->b(I)Lcom/avast/a/b/a/a$m$a;

    .line 11426
    iget-object v0, v1, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    .line 9160
    if-eqz v0, :cond_3

    .line 12426
    iget-object v0, v1, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    .line 13330
    if-nez v0, :cond_2

    .line 13331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13333
    :cond_2
    iget v1, v2, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v2, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 13334
    iput-object v0, v2, Lcom/avast/a/b/a/a$m$a;->b:Ljava/lang/Object;

    .line 13920
    :cond_3
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$m$a;->a()Lcom/avast/a/b/a/a$m;

    move-result-object v0

    .line 13921
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$m;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 13922
    throw v0

    .line 9037
    :cond_4
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 9036
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$m;

    .line 11
    return-object v0
.end method
