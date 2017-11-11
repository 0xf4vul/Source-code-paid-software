.class final Lf/i/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/i/c$b;

.field final synthetic b:Lf/i/c;


# direct methods
.method constructor <init>(Lf/i/c;Lf/i/c$b;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lf/i/c$1;->b:Lf/i/c;

    iput-object p2, p0, Lf/i/c$1;->a:Lf/i/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lf/i/c$1;->b:Lf/i/c;

    iget-object v1, p0, Lf/i/c$1;->a:Lf/i/c$b;

    invoke-virtual {v0, v1}, Lf/i/c;->a(Lf/i/c$b;)V

    .line 73
    return-void
.end method
