.class public final Lf/d/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lf/c/a;


# direct methods
.method public constructor <init>(Lf/c/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lf/d/a/v;->a:Lf/c/a;

    .line 37
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)",
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lf/d/a/v;->a:Lf/c/a;

    invoke-static {v0}, Lf/j/d;->a(Lf/c/a;)Lf/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 45
    invoke-static {p1}, Lf/f/d;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/v;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
