.class Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final a:Lcom/google/gson/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/b/a",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/gson/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/s",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/gson/b/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/gson/b/a",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    instance-of v0, p1, Lcom/google/gson/s;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/gson/s;

    :goto_0
    iput-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->d:Lcom/google/gson/s;

    .line 120
    instance-of v0, p1, Lcom/google/gson/j;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/gson/j;

    :goto_1
    iput-object p1, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->e:Lcom/google/gson/j;

    .line 123
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->d:Lcom/google/gson/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->e:Lcom/google/gson/j;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/gson/internal/a;->a(Z)V

    .line 124
    iput-object p2, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->a:Lcom/google/gson/b/a;

    .line 125
    iput-boolean p3, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->b:Z

    .line 126
    iput-object v1, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->c:Ljava/lang/Class;

    .line 127
    return-void

    :cond_1
    move-object v0, v1

    .line 117
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 120
    goto :goto_1

    .line 123
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/gson/b/a;ZB)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/b/a;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/e;",
            "Lcom/google/gson/b/a",
            "<TT;>;)",
            "Lcom/google/gson/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->a:Lcom/google/gson/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->a:Lcom/google/gson/b/a;

    invoke-virtual {v0, p2}, Lcom/google/gson/b/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->a:Lcom/google/gson/b/a;

    .line 1101
    iget-object v0, v0, Lcom/google/gson/b/a;->b:Ljava/lang/reflect/Type;

    .line 2094
    iget-object v1, p2, Lcom/google/gson/b/a;->a:Ljava/lang/Class;

    .line 131
    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 134
    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/gson/TreeTypeAdapter;

    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->d:Lcom/google/gson/s;

    iget-object v2, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->e:Lcom/google/gson/j;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/TreeTypeAdapter;-><init>(Lcom/google/gson/s;Lcom/google/gson/j;Lcom/google/gson/e;Lcom/google/gson/b/a;Lcom/google/gson/w;B)V

    :goto_1
    return-object v0

    :cond_1
    move v0, v6

    .line 131
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->c:Ljava/lang/Class;

    .line 3094
    iget-object v1, p2, Lcom/google/gson/b/a;->a:Ljava/lang/Class;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 134
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
