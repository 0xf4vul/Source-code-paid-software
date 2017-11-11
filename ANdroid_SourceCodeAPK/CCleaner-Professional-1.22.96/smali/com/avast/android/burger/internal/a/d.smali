.class public final Lcom/avast/android/burger/internal/a/d;
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
        "Lcom/avast/a/b/a/a$i;",
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
    const-class v0, Lcom/avast/android/burger/internal/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/internal/a/d;->a:Z

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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/avast/android/burger/internal/a/d;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/d;->b:Lcom/avast/android/burger/internal/a/a;

    .line 23
    sget-boolean v0, Lcom/avast/android/burger/internal/a/d;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/avast/android/burger/internal/a/d;->c:Ljavax/a/a;

    .line 25
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
            "Lcom/avast/a/b/a/a$i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/avast/android/burger/internal/a/d;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/burger/internal/a/d;-><init>(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 10
    .line 8029
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/d;->c:Ljavax/a/a;

    .line 8030
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/b;

    .line 8112
    invoke-static {}, Lcom/avast/a/b/a/a$i;->r()Lcom/avast/a/b/a/a$i$a;

    move-result-object v1

    .line 8343
    iget-object v2, v0, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    .line 8113
    if-eqz v2, :cond_1

    .line 9343
    iget-object v2, v0, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    .line 10132
    if-nez v2, :cond_0

    .line 10133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10135
    :cond_0
    iget v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 10136
    iput-object v2, v1, Lcom/avast/a/b/a/a$i$a;->b:Ljava/lang/Object;

    .line 10361
    :cond_1
    iget-object v2, v0, Lcom/avast/android/burger/b;->f:Ljava/lang/String;

    .line 8116
    if-nez v2, :cond_2

    .line 8117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "GUID is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11361
    :cond_2
    iget-object v2, v0, Lcom/avast/android/burger/b;->f:Ljava/lang/String;

    .line 11426
    if-nez v2, :cond_3

    .line 11427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11429
    :cond_3
    iget v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 11430
    iput-object v2, v1, Lcom/avast/a/b/a/a$i$a;->d:Ljava/lang/Object;

    .line 12352
    iget-object v2, v0, Lcom/avast/android/burger/b;->e:Ljava/lang/String;

    .line 8120
    if-nez v2, :cond_4

    .line 8121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ProfileID is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13352
    :cond_4
    iget-object v2, v0, Lcom/avast/android/burger/b;->e:Ljava/lang/String;

    .line 14328
    if-nez v2, :cond_5

    .line 14329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14331
    :cond_5
    iget v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 14332
    iput-object v2, v1, Lcom/avast/a/b/a/a$i$a;->c:Ljava/lang/Object;

    .line 14408
    iget-object v2, v0, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    .line 8124
    if-eqz v2, :cond_7

    .line 15408
    iget-object v2, v0, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    .line 15720
    if-nez v2, :cond_6

    .line 15721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15723
    :cond_6
    iget v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 15724
    iput-object v2, v1, Lcom/avast/a/b/a/a$i$a;->e:Ljava/lang/Object;

    .line 16527
    :cond_7
    iget-object v2, v0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    .line 8127
    if-eqz v2, :cond_9

    .line 17527
    iget-object v2, v0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    .line 17916
    if-nez v2, :cond_8

    .line 17917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17919
    :cond_8
    iget v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 17920
    iput-object v2, v1, Lcom/avast/a/b/a/a$i$a;->f:Ljava/lang/Object;

    .line 18535
    :cond_9
    iget-object v2, v0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    .line 8130
    if-eqz v2, :cond_b

    .line 19535
    iget-object v2, v0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    .line 20014
    if-nez v2, :cond_a

    .line 20015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20017
    :cond_a
    iget v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 20018
    iput-object v2, v1, Lcom/avast/a/b/a/a$i$a;->g:Ljava/lang/Object;

    .line 20543
    :cond_b
    iget-object v2, v0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    .line 8133
    if-eqz v2, :cond_d

    .line 21543
    iget-object v0, v0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    .line 22112
    if-nez v0, :cond_c

    .line 22113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22115
    :cond_c
    iget v2, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v1, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 22116
    iput-object v0, v1, Lcom/avast/a/b/a/a$i$a;->h:Ljava/lang/Object;

    .line 22548
    :cond_d
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$i$a;->a()Lcom/avast/a/b/a/a$i;

    move-result-object v0

    .line 22549
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$i;->b()Z

    move-result v1

    if-nez v1, :cond_e

    .line 23306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 22550
    throw v0

    .line 8030
    :cond_e
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 8029
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$i;

    .line 10
    return-object v0
.end method
