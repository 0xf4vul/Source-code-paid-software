.class public final Lcom/avast/android/burger/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a",
        "<",
        "Lcom/avast/android/burger/a/i$a;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljavax/a/a;
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
    .line 10
    const-class v0, Lcom/avast/android/burger/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/a/j;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$c;",
            ">;>;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-boolean v0, Lcom/avast/android/burger/a/j;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/a/j;->b:Ljavax/a/a;

    .line 25
    sget-boolean v0, Lcom/avast/android/burger/a/j;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_1
    iput-object p2, p0, Lcom/avast/android/burger/a/j;->c:Ljavax/a/a;

    .line 27
    return-void
.end method

.method public static a(Ljavax/a/a;Ljavax/a/a;)La/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$c;",
            ">;>;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/b;",
            ">;)",
            "La/a",
            "<",
            "Lcom/avast/android/burger/a/i$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/avast/android/burger/a/j;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/burger/a/j;-><init>(Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    check-cast p1, Lcom/avast/android/burger/a/i$a;

    .line 1038
    if-nez p1, :cond_0

    .line 1039
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/avast/android/burger/a/j;->b:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p1, Lcom/avast/android/burger/a/i$a;->a:Ljava/util/List;

    .line 1042
    iget-object v0, p0, Lcom/avast/android/burger/a/j;->c:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/b;

    iput-object v0, p1, Lcom/avast/android/burger/a/i$a;->b:Lcom/avast/android/burger/b;

    .line 10
    return-void
.end method
