.class final Lf/d/c/e$a;
.super Lf/g$a;
.source "SourceFile"

# interfaces
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Lf/j/a;

.field final synthetic b:Lf/d/c/e;


# direct methods
.method private constructor <init>(Lf/d/c/e;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lf/d/c/e$a;->b:Lf/d/c/e;

    invoke-direct {p0}, Lf/g$a;-><init>()V

    .line 43
    new-instance v0, Lf/j/a;

    invoke-direct {v0}, Lf/j/a;-><init>()V

    iput-object v0, p0, Lf/d/c/e$a;->a:Lf/j/a;

    return-void
.end method

.method synthetic constructor <init>(Lf/d/c/e;B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lf/d/c/e$a;-><init>(Lf/d/c/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lf/c/a;)Lf/j;
    .locals 1

    .prologue
    .line 55
    invoke-interface {p1}, Lf/c/a;->a()V

    .line 56
    invoke-static {}, Lf/j/d;->a()Lf/j;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lf/d/c/e$a;->a:Lf/j/a;

    invoke-virtual {v0}, Lf/j/a;->b()V

    .line 62
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lf/d/c/e$a;->a:Lf/j/a;

    invoke-virtual {v0}, Lf/j/a;->c()Z

    move-result v0

    return v0
.end method
