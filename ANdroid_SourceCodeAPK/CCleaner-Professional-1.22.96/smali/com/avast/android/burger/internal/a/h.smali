.class public final Lcom/avast/android/burger/internal/a/h;
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
        "Lretrofit/client/Client;",
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
            "Lcom/avast/android/c/a/c;",
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

.field private final e:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/a/a;
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
    .line 13
    const-class v0, Lcom/avast/android/burger/internal/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/internal/a/h;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/avast/android/burger/internal/a/f;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/f;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/c/a/c;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/internal/server/a;",
            ">;",
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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-boolean v0, Lcom/avast/android/burger/internal/a/h;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/h;->b:Lcom/avast/android/burger/internal/a/f;

    .line 36
    sget-boolean v0, Lcom/avast/android/burger/internal/a/h;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/avast/android/burger/internal/a/h;->c:Ljavax/a/a;

    .line 38
    sget-boolean v0, Lcom/avast/android/burger/internal/a/h;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_2
    iput-object p3, p0, Lcom/avast/android/burger/internal/a/h;->d:Ljavax/a/a;

    .line 40
    sget-boolean v0, Lcom/avast/android/burger/internal/a/h;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_3
    iput-object p4, p0, Lcom/avast/android/burger/internal/a/h;->e:Ljavax/a/a;

    .line 42
    sget-boolean v0, Lcom/avast/android/burger/internal/a/h;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_4
    iput-object p5, p0, Lcom/avast/android/burger/internal/a/h;->f:Ljavax/a/a;

    .line 44
    return-void
.end method

.method public static a(Lcom/avast/android/burger/internal/a/f;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/f;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/c/a/c;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/internal/server/a;",
            ">;",
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
            "Lretrofit/client/Client;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/avast/android/burger/internal/a/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/burger/internal/a/h;-><init>(Lcom/avast/android/burger/internal/a/f;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 13
    .line 1048
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/h;->c:Ljavax/a/a;

    .line 1050
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/c/a/c;

    iget-object v0, p0, Lcom/avast/android/burger/internal/a/h;->d:Ljavax/a/a;

    .line 1051
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/avast/android/burger/internal/server/a;

    iget-object v0, p0, Lcom/avast/android/burger/internal/a/h;->e:Ljavax/a/a;

    .line 1052
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/avast/android/burger/internal/a/h;->f:Ljavax/a/a;

    .line 1053
    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/burger/b;

    .line 1063
    invoke-static {}, Lcom/avast/c/a/a/a$a;->a()Lcom/avast/c/a/a/a$a;

    move-result-object v3

    invoke-static {v3}, Lcom/avast/c/a/a/a$a;->a(Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a$b;

    move-result-object v3

    .line 1064
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/avast/c/a/a/a$a$b;->b(Lcom/google/a/c;)Lcom/avast/c/a/a/a$a$b;

    move-result-object v0

    .line 1380
    iget-object v3, v1, Lcom/avast/android/burger/b;->i:Ljava/lang/String;

    .line 1065
    invoke-static {v3}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avast/c/a/a/a$a$b;->c(Lcom/google/a/c;)Lcom/avast/c/a/a/a$a$b;

    move-result-object v3

    .line 2361
    iget-object v0, v1, Lcom/avast/android/burger/b;->f:Ljava/lang/String;

    .line 1068
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 1069
    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1070
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1071
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1072
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1073
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/avast/c/a/a/a$a$b;->a(Lcom/google/a/c;)Lcom/avast/c/a/a/a$a$b;

    .line 1074
    new-instance v0, Lcom/avast/android/c/a/b;

    new-instance v1, Lretrofit/client/UrlConnectionClient;

    invoke-direct {v1}, Lretrofit/client/UrlConnectionClient;-><init>()V

    .line 2878
    invoke-virtual {v3}, Lcom/avast/c/a/a/a$a$b;->a()Lcom/avast/c/a/a/a$a;

    move-result-object v3

    .line 2879
    invoke-virtual {v3}, Lcom/avast/c/a/a/a$a;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 2880
    throw v0

    .line 1075
    :cond_0
    invoke-interface {v4}, Lcom/avast/android/burger/internal/server/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 4029
    new-instance v5, Lcom/avast/android/c/d$a;

    invoke-direct {v5}, Lcom/avast/android/c/d$a;-><init>()V

    .line 1075
    invoke-direct/range {v0 .. v5}, Lcom/avast/android/c/a/b;-><init>(Lretrofit/client/Client;Lcom/avast/android/c/a/c;Lcom/avast/c/a/a/a$a;Ljava/lang/String;Lcom/avast/android/c/d;)V

    .line 1049
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1048
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/client/Client;

    .line 13
    return-object v0
.end method
