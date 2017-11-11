.class final Lf/d/c/a$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/c/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/c/a;

.field final synthetic b:Lf/d/c/a$b;


# direct methods
.method constructor <init>(Lf/d/c/a$b;Lf/c/a;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lf/d/c/a$b$1;->b:Lf/d/c/a$b;

    iput-object p2, p0, Lf/d/c/a$b$1;->a:Lf/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lf/d/c/a$b$1;->b:Lf/d/c/a$b;

    .line 1207
    iget-object v0, v0, Lf/d/c/a$b;->a:Lf/j/b;

    .line 2051
    iget-boolean v0, v0, Lf/j/b;->a:Z

    .line 225
    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lf/d/c/a$b$1;->a:Lf/c/a;

    invoke-interface {v0}, Lf/c/a;->a()V

    goto :goto_0
.end method
