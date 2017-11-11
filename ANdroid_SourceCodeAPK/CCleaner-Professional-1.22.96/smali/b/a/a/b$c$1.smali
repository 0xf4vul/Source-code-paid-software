.class final Lb/a/a/b$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/b$c;


# direct methods
.method constructor <init>(Lb/a/a/b$c;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Lb/a/a/b$c$1;->a:Lb/a/a/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lb/a/a/b$c$1;->a:Lb/a/a/b$c;

    .line 1975
    invoke-virtual {v0}, Lb/a/a/b$c;->a()V

    .line 1273
    return-void
.end method
