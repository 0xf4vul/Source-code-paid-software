.class public final Lcom/avast/android/burger/internal/a/c;
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
        "Lcom/avast/a/b/a/a$a;",
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
    const-class v0, Lcom/avast/android/burger/internal/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/internal/a/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/a;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Lcom/avast/android/burger/internal/a/c;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/c;->b:Lcom/avast/android/burger/internal/a/a;

    .line 24
    sget-boolean v0, Lcom/avast/android/burger/internal/a/c;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1
    iput-object p2, p0, Lcom/avast/android/burger/internal/a/c;->c:Ljavax/a/a;

    .line 26
    return-void
.end method

.method public static a(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/a;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/b;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/avast/a/b/a/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/avast/android/burger/internal/a/c;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/burger/internal/a/c;-><init>(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 10
    .line 1030
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/c;->c:Ljavax/a/a;

    .line 1031
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/b;

    .line 1092
    invoke-static {}, Lcom/avast/a/b/a/a$a;->d()Lcom/avast/a/b/a/a$a$a;

    move-result-object v1

    .line 1568
    iget-object v2, v0, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    .line 1094
    if-eqz v2, :cond_0

    .line 2568
    iget-object v0, v0, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    .line 1095
    invoke-static {v0}, Lcom/avast/android/burger/internal/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 1096
    if-eqz v0, :cond_0

    .line 1097
    invoke-static {v0}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/a/b/a/a$a$a;->a(Lcom/google/a/c;)Lcom/avast/a/b/a/a$a$a;

    .line 1100
    :cond_0
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$a$a;->a()Lcom/avast/a/b/a/a$a;

    move-result-object v0

    .line 1031
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1030
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$a;

    .line 10
    return-object v0
.end method
