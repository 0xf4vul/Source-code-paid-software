.class public final Lcom/google/gson/TreeTypeAdapter;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/v",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/s",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/gson/e;

.field private final d:Lcom/google/gson/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/b/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/w;

.field private f:Lcom/google/gson/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/v",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gson/s;Lcom/google/gson/j;Lcom/google/gson/e;Lcom/google/gson/b/a;Lcom/google/gson/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/s",
            "<TT;>;",
            "Lcom/google/gson/j",
            "<TT;>;",
            "Lcom/google/gson/e;",
            "Lcom/google/gson/b/a",
            "<TT;>;",
            "Lcom/google/gson/w;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/gson/TreeTypeAdapter;->a:Lcom/google/gson/s;

    .line 44
    iput-object p2, p0, Lcom/google/gson/TreeTypeAdapter;->b:Lcom/google/gson/j;

    .line 45
    iput-object p3, p0, Lcom/google/gson/TreeTypeAdapter;->c:Lcom/google/gson/e;

    .line 46
    iput-object p4, p0, Lcom/google/gson/TreeTypeAdapter;->d:Lcom/google/gson/b/a;

    .line 47
    iput-object p5, p0, Lcom/google/gson/TreeTypeAdapter;->e:Lcom/google/gson/w;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/s;Lcom/google/gson/j;Lcom/google/gson/e;Lcom/google/gson/b/a;Lcom/google/gson/w;B)V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/google/gson/TreeTypeAdapter;-><init>(Lcom/google/gson/s;Lcom/google/gson/j;Lcom/google/gson/e;Lcom/google/gson/b/a;Lcom/google/gson/w;)V

    return-void
.end method

.method private a()Lcom/google/gson/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter;->f:Lcom/google/gson/v;

    .line 76
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter;->c:Lcom/google/gson/e;

    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter;->e:Lcom/google/gson/w;

    iget-object v2, p0, Lcom/google/gson/TreeTypeAdapter;->d:Lcom/google/gson/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/e;->a(Lcom/google/gson/w;Lcom/google/gson/b/a;)Lcom/google/gson/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/TreeTypeAdapter;->f:Lcom/google/gson/v;

    goto :goto_0
.end method

.method public static a(Lcom/google/gson/b/a;Ljava/lang/Object;)Lcom/google/gson/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/b/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/w;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;

    invoke-direct {v0, p1, p0, v1, v1}, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/b/a;ZB)V

    return-object v0
.end method

.method public static b(Lcom/google/gson/b/a;Ljava/lang/Object;)Lcom/google/gson/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/b/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/w;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    .line 3101
    iget-object v0, p0, Lcom/google/gson/b/a;->b:Ljava/lang/reflect/Type;

    .line 4094
    iget-object v2, p0, Lcom/google/gson/b/a;->a:Ljava/lang/Class;

    .line 95
    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    new-instance v2, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/b/a;ZB)V

    return-object v2

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/gson/c/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/c/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter;->b:Lcom/google/gson/j;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/google/gson/TreeTypeAdapter;->a()Lcom/google/gson/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/v;->a(Lcom/google/gson/c/a;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/google/gson/internal/i;->a(Lcom/google/gson/c/a;)Lcom/google/gson/k;

    move-result-object v0

    .line 1074
    instance-of v1, v0, Lcom/google/gson/m;

    .line 55
    if-eqz v1, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter;->b:Lcom/google/gson/j;

    iget-object v2, p0, Lcom/google/gson/TreeTypeAdapter;->d:Lcom/google/gson/b/a;

    .line 1101
    iget-object v2, v2, Lcom/google/gson/b/a;->b:Ljava/lang/reflect/Type;

    .line 58
    invoke-interface {v1, v0, v2}, Lcom/google/gson/j;->a(Lcom/google/gson/k;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/gson/c/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/c/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter;->a:Lcom/google/gson/s;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/google/gson/TreeTypeAdapter;->a()Lcom/google/gson/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/v;->a(Lcom/google/gson/c/c;Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/google/gson/c/c;->e()Lcom/google/gson/c/c;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter;->a:Lcom/google/gson/s;

    invoke-interface {v0, p2}, Lcom/google/gson/s;->a(Ljava/lang/Object;)Lcom/google/gson/k;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Lcom/google/gson/internal/i;->a(Lcom/google/gson/k;Lcom/google/gson/c/c;)V

    goto :goto_0
.end method
