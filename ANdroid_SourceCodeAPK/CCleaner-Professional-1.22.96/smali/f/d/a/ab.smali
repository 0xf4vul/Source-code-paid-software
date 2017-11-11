.class public final Lf/d/a/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/ab$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$b",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field final a:Lf/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/f",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field private final b:Lf/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/d",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/d/a/ab;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lf/c/d;Lf/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/d",
            "<TR;>;",
            "Lf/c/f",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lf/d/a/ab;->b:Lf/c/d;

    .line 75
    iput-object p2, p0, Lf/d/a/ab;->a:Lf/c/f;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lf/c/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lf/c/f",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lf/d/a/ab$1;

    invoke-direct {v0, p1}, Lf/d/a/ab$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lf/d/a/ab;-><init>(Lf/c/d;Lf/c/f;)V

    .line 71
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TR;>;)",
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lf/d/a/ab;->b:Lf/c/d;

    invoke-interface {v0}, Lf/c/d;->call()Ljava/lang/Object;

    move-result-object v1

    .line 95
    sget-object v0, Lf/d/a/ab;->c:Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    .line 96
    new-instance v0, Lf/d/a/ab$2;

    invoke-direct {v0, p0, p1, p1}, Lf/d/a/ab$2;-><init>(Lf/d/a/ab;Lf/i;Lf/i;)V

    .line 165
    :goto_0
    return-object v0

    .line 129
    :cond_0
    new-instance v2, Lf/d/a/ab$a;

    invoke-direct {v2, v1, p1}, Lf/d/a/ab$a;-><init>(Ljava/lang/Object;Lf/i;)V

    .line 131
    new-instance v0, Lf/d/a/ab$3;

    invoke-direct {v0, p0, v1, v2}, Lf/d/a/ab$3;-><init>(Lf/d/a/ab;Ljava/lang/Object;Lf/d/a/ab$a;)V

    .line 163
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 164
    invoke-virtual {p1, v2}, Lf/i;->a(Lf/f;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/ab;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
