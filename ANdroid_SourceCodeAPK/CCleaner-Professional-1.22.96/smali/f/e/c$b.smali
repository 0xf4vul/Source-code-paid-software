.class public final Lf/e/c$b;
.super Lf/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/e/c",
        "<TS;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lf/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/d",
            "<+TS;>;"
        }
    .end annotation
.end field

.field private final b:Lf/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/f",
            "<-TS;-",
            "Lf/e",
            "<-TT;>;+TS;>;"
        }
    .end annotation
.end field

.field private final c:Lf/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/b",
            "<-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/c/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/f",
            "<TS;",
            "Lf/e",
            "<-TT;>;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lf/e/c$b;-><init>(Lf/c/f;Lf/c/b;)V

    .line 303
    return-void
.end method

.method private constructor <init>(Lf/c/f;Lf/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/f",
            "<-TS;-",
            "Lf/e",
            "<-TT;>;+TS;>;",
            "Lf/c/b",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0}, Lf/e/c;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lf/e/c$b;->a:Lf/c/d;

    .line 289
    iput-object p1, p0, Lf/e/c$b;->b:Lf/c/f;

    .line 290
    iput-object p2, p0, Lf/e/c$b;->c:Lf/c/b;

    .line 291
    return-void
.end method

.method public constructor <init>(Lf/c/f;Lf/c/b;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/f",
            "<TS;",
            "Lf/e",
            "<-TT;>;TS;>;",
            "Lf/c/b",
            "<-TS;>;B)V"
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lf/e/c$b;-><init>(Lf/c/f;Lf/c/b;)V

    .line 299
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lf/e/c$b;->a:Lf/c/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lf/e/c$b;->a:Lf/c/d;

    invoke-interface {v0}, Lf/c/d;->call()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Object;Lf/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lf/e",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lf/e/c$b;->b:Lf/c/f;

    invoke-interface {v0, p1, p2}, Lf/c/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lf/e/c$b;->c:Lf/c/b;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lf/e/c$b;->c:Lf/c/b;

    invoke-interface {v0, p1}, Lf/c/b;->call(Ljava/lang/Object;)V

    .line 320
    :cond_0
    return-void
.end method

.method public final synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 282
    check-cast p1, Lf/i;

    invoke-super {p0, p1}, Lf/e/c;->a(Lf/i;)V

    return-void
.end method
