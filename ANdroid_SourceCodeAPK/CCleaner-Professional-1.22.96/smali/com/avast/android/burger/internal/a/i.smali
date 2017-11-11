.class public final Lcom/avast/android/burger/internal/a/i;
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
        "Lcom/avast/android/burger/internal/server/ServerInterface;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/avast/android/burger/internal/a/f;

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lretrofit/client/Client;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/internal/server/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/avast/android/burger/internal/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/internal/a/i;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/avast/android/burger/internal/a/f;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/f;",
            "Ljavax/a/a",
            "<",
            "Lretrofit/client/Client;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/internal/server/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lcom/avast/android/burger/internal/a/i;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/i;->b:Lcom/avast/android/burger/internal/a/f;

    .line 28
    sget-boolean v0, Lcom/avast/android/burger/internal/a/i;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_1
    iput-object p2, p0, Lcom/avast/android/burger/internal/a/i;->c:Ljavax/a/a;

    .line 30
    sget-boolean v0, Lcom/avast/android/burger/internal/a/i;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_2
    iput-object p3, p0, Lcom/avast/android/burger/internal/a/i;->d:Ljavax/a/a;

    .line 32
    return-void
.end method

.method public static a(Lcom/avast/android/burger/internal/a/f;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/f;",
            "Ljavax/a/a",
            "<",
            "Lretrofit/client/Client;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/internal/server/a;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/avast/android/burger/internal/server/ServerInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/avast/android/burger/internal/a/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/avast/android/burger/internal/a/i;-><init>(Lcom/avast/android/burger/internal/a/f;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1036
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/i;->c:Ljavax/a/a;

    .line 1037
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/client/Client;

    iget-object v1, p0, Lcom/avast/android/burger/internal/a/i;->d:Ljavax/a/a;

    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/burger/internal/server/a;

    .line 1088
    new-instance v2, Lretrofit/RestAdapter$Builder;

    invoke-direct {v2}, Lretrofit/RestAdapter$Builder;-><init>()V

    .line 1089
    invoke-interface {v1}, Lcom/avast/android/burger/internal/server/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    .line 1090
    invoke-virtual {v1, v0}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/avast/android/f/f/a;

    invoke-direct {v1}, Lcom/avast/android/f/f/a;-><init>()V

    .line 1091
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setConverter(Lretrofit/converter/Converter;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    .line 1092
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 1094
    const-class v1, Lcom/avast/android/burger/internal/server/ServerInterface;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/server/ServerInterface;

    .line 1037
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1036
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/server/ServerInterface;

    .line 11
    return-object v0
.end method
