.class public final Lcom/piriform/ccleaner/professional/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/professional/ui/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/professional/p;


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/professional/p;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/p$b;->a:Lcom/piriform/ccleaner/professional/p;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/piriform/ccleaner/professional/p;B)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/professional/p$b;-><init>(Lcom/piriform/ccleaner/professional/p;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/p$b;->a:Lcom/piriform/ccleaner/professional/p;

    .line 1062
    iget-object v1, v0, Lcom/piriform/ccleaner/professional/p;->b:Lcom/piriform/ccleaner/professional/p$c;

    invoke-interface {v1}, Lcom/piriform/ccleaner/professional/p$c;->a()V

    .line 1063
    iget-object v0, v0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/p$a;->C_()V

    .line 132
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/p$b;->a:Lcom/piriform/ccleaner/professional/p;

    .line 1072
    iget-object v1, v0, Lcom/piriform/ccleaner/professional/p;->b:Lcom/piriform/ccleaner/professional/p$c;

    invoke-interface {v1}, Lcom/piriform/ccleaner/professional/p$c;->c()V

    .line 1073
    iget-object v1, v0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    invoke-interface {v1}, Lcom/piriform/ccleaner/professional/p$a;->B_()V

    .line 1074
    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/p;->a()V

    .line 137
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/p$b;->a:Lcom/piriform/ccleaner/professional/p;

    .line 1078
    iget-object v0, v0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/p$a;->a()V

    .line 142
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/p$b;->a:Lcom/piriform/ccleaner/professional/p;

    .line 2067
    iget-object v1, v0, Lcom/piriform/ccleaner/professional/p;->b:Lcom/piriform/ccleaner/professional/p$c;

    invoke-interface {v1}, Lcom/piriform/ccleaner/professional/p$c;->b()V

    .line 2068
    iget-object v0, v0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/p$a;->b()V

    .line 147
    return-void
.end method
