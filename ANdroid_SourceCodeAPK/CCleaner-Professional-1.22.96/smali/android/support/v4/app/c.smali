.class final Landroid/support/v4/app/c;
.super Landroid/support/v4/app/q;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/n$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/c$a;
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field final b:Landroid/support/v4/app/n;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c$a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:Z

.field n:I

.field o:I

.field p:Ljava/lang/CharSequence;

.field q:I

.field r:Ljava/lang/CharSequence;

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/n;)V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/support/v4/app/q;-><init>()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c;->k:Z

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/c;->n:I

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c;->u:Z

    .line 319
    iput-object p1, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    .line 320
    return-void
.end method

.method private a(ILandroid/support/v4/app/h;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 380
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 382
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 384
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    iput-object v0, p2, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 391
    if-eqz p3, :cond_3

    .line 392
    iget-object v0, p2, Landroid/support/v4/app/h;->G:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/support/v4/app/h;->G:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/h;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_2
    iput-object p3, p2, Landroid/support/v4/app/h;->G:Ljava/lang/String;

    .line 400
    :cond_3
    if-eqz p1, :cond_6

    .line 401
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t add fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_4
    iget v0, p2, Landroid/support/v4/app/h;->E:I

    if-eqz v0, :cond_5

    iget v0, p2, Landroid/support/v4/app/h;->E:I

    if-eq v0, p1, :cond_5

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/h;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_5
    iput p1, p2, Landroid/support/v4/app/h;->E:I

    iput p1, p2, Landroid/support/v4/app/h;->F:I

    .line 413
    :cond_6
    new-instance v0, Landroid/support/v4/app/c$a;

    invoke-direct {v0}, Landroid/support/v4/app/c$a;-><init>()V

    .line 414
    iput p4, v0, Landroid/support/v4/app/c$a;->a:I

    .line 415
    iput-object p2, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    .line 416
    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    .line 417
    return-void
.end method

.method private b(Z)I
    .locals 3

    .prologue
    .line 636
    iget-boolean v0, p0, Landroid/support/v4/app/c;->m:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_1

    .line 638
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Commit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v0, Landroid/support/v4/h/e;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/h/e;-><init>(Ljava/lang/String;)V

    .line 640
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 641
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 642
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 644
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c;->m:Z

    .line 645
    iget-boolean v0, p0, Landroid/support/v4/app/c;->j:Z

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/c;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->n:I

    .line 650
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/n$c;Z)V

    .line 651
    iget v0, p0, Landroid/support/v4/app/c;->n:I

    return v0

    .line 648
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/c;->n:I

    goto :goto_0
.end method

.method static b(Landroid/support/v4/app/c$a;)Z
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    .line 912
    iget-boolean v1, v0, Landroid/support/v4/app/h;->t:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/h;->I:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/h;->H:Z

    if-nez v1, :cond_0

    .line 913
    invoke-virtual {v0}, Landroid/support/v4/app/h;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/c;->b(Z)I

    move-result v0

    return v0
.end method

.method public final a(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;
    .locals 2

    .prologue
    .line 369
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/c;->a(ILandroid/support/v4/app/h;Ljava/lang/String;I)V

    .line 370
    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/h;Ljava/lang/String;)Landroid/support/v4/app/q;
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/c;->a(ILandroid/support/v4/app/h;Ljava/lang/String;I)V

    .line 376
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/h;)Landroid/support/v4/app/q;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Landroid/support/v4/app/c$a;

    invoke-direct {v0}, Landroid/support/v4/app/c$a;-><init>()V

    .line 437
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/c$a;->a:I

    .line 438
    iput-object p1, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    .line 439
    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    .line 441
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/h;Ljava/lang/String;)Landroid/support/v4/app/q;
    .locals 2

    .prologue
    .line 363
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/c;->a(ILandroid/support/v4/app/h;Ljava/lang/String;I)V

    .line 364
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/q;
    .locals 2

    .prologue
    .line 538
    iget-boolean v0, p0, Landroid/support/v4/app/c;->k:Z

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c;->j:Z

    .line 543
    iput-object p1, p0, Landroid/support/v4/app/c;->l:Ljava/lang/String;

    .line 544
    return-object p0
.end method

.method final a(I)V
    .locals 6

    .prologue
    .line 591
    iget-boolean v0, p0, Landroid/support/v4/app/c;->j:Z

    if-nez v0, :cond_1

    .line 605
    :cond_0
    return-void

    .line 594
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bump nesting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 597
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 598
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 599
    iget-object v3, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    if-eqz v3, :cond_3

    .line 600
    iget-object v3, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    iget v4, v3, Landroid/support/v4/app/h;->y:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/h;->y:I

    .line 601
    sget-boolean v3, Landroid/support/v4/app/n;->a:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    iget v0, v0, Landroid/support/v4/app/h;->y:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final a(Landroid/support/v4/app/c$a;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget v0, p0, Landroid/support/v4/app/c;->d:I

    iput v0, p1, Landroid/support/v4/app/c$a;->c:I

    .line 356
    iget v0, p0, Landroid/support/v4/app/c;->e:I

    iput v0, p1, Landroid/support/v4/app/c$a;->d:I

    .line 357
    iget v0, p0, Landroid/support/v4/app/c;->f:I

    iput v0, p1, Landroid/support/v4/app/c$a;->e:I

    .line 358
    iget v0, p0, Landroid/support/v4/app/c;->g:I

    iput v0, p1, Landroid/support/v4/app/c$a;->f:I

    .line 359
    return-void
.end method

.method final a(Landroid/support/v4/app/h$c;)V
    .locals 3

    .prologue
    .line 902
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 903
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 904
    invoke-static {v0}, Landroid/support/v4/app/c;->b(Landroid/support/v4/app/c$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 905
    iget-object v0, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$c;)V

    .line 902
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 908
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 240
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    .prologue
    .line 243
    if-eqz p3, :cond_8

    .line 244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->n:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 246
    const-string/jumbo v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c;->m:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 247
    iget v0, p0, Landroid/support/v4/app/c;->h:I

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Landroid/support/v4/app/c;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget v0, p0, Landroid/support/v4/app/c;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    :cond_0
    iget v0, p0, Landroid/support/v4/app/c;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/c;->e:I

    if-eqz v0, :cond_2

    .line 254
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Landroid/support/v4/app/c;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    iget v0, p0, Landroid/support/v4/app/c;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    :cond_2
    iget v0, p0, Landroid/support/v4/app/c;->f:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/c;->g:I

    if-eqz v0, :cond_4

    .line 260
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Landroid/support/v4/app/c;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Landroid/support/v4/app/c;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :cond_4
    iget v0, p0, Landroid/support/v4/app/c;->o:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/c;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 266
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Landroid/support/v4/app/c;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Landroid/support/v4/app/c;->p:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 271
    :cond_6
    iget v0, p0, Landroid/support/v4/app/c;->q:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/c;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 272
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Landroid/support/v4/app/c;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Landroid/support/v4/app/c;->r:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 279
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 280
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 283
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_d

    .line 284
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 286
    iget v1, v0, Landroid/support/v4/app/c$a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cmd="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 298
    const-string/jumbo v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 300
    if-eqz p3, :cond_c

    .line 301
    iget v1, v0, Landroid/support/v4/app/c$a;->c:I

    if-nez v1, :cond_9

    iget v1, v0, Landroid/support/v4/app/c$a;->d:I

    if-eqz v1, :cond_a

    .line 302
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "enterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget v1, v0, Landroid/support/v4/app/c$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v1, " exitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    iget v1, v0, Landroid/support/v4/app/c$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    :cond_a
    iget v1, v0, Landroid/support/v4/app/c$a;->e:I

    if-nez v1, :cond_b

    iget v1, v0, Landroid/support/v4/app/c$a;->f:I

    if-eqz v1, :cond_c

    .line 308
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "popEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget v1, v0, Landroid/support/v4/app/c$a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v1, " popExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget v0, v0, Landroid/support/v4/app/c$a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 287
    :pswitch_0
    const-string/jumbo v1, "NULL"

    goto :goto_1

    .line 288
    :pswitch_1
    const-string/jumbo v1, "ADD"

    goto :goto_1

    .line 289
    :pswitch_2
    const-string/jumbo v1, "REPLACE"

    goto/16 :goto_1

    .line 290
    :pswitch_3
    const-string/jumbo v1, "REMOVE"

    goto/16 :goto_1

    .line 291
    :pswitch_4
    const-string/jumbo v1, "HIDE"

    goto/16 :goto_1

    .line 292
    :pswitch_5
    const-string/jumbo v1, "SHOW"

    goto/16 :goto_1

    .line 293
    :pswitch_6
    const-string/jumbo v1, "DETACH"

    goto/16 :goto_1

    .line 294
    :pswitch_7
    const-string/jumbo v1, "ATTACH"

    goto/16 :goto_1

    .line 316
    :cond_d
    return-void

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method final a(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 821
    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 822
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 823
    iget v4, v0, Landroid/support/v4/app/c$a;->a:I

    packed-switch v4, :pswitch_data_0

    .line 821
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 826
    :pswitch_1
    iget-object v0, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 830
    :pswitch_2
    iget-object v0, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 833
    :pswitch_3
    iget-object v7, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    .line 834
    iget v8, v7, Landroid/support/v4/app/h;->F:I

    .line 836
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v6, v4

    move v5, v1

    move v4, v2

    :goto_2
    if-ltz v6, :cond_1

    .line 837
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    .line 838
    iget v9, v1, Landroid/support/v4/app/h;->F:I

    if-ne v9, v8, :cond_4

    .line 839
    if-ne v1, v7, :cond_0

    move v1, v3

    move v4, v5

    .line 836
    :goto_3
    add-int/lit8 v5, v6, -0x1

    move v6, v5

    move v5, v4

    move v4, v1

    goto :goto_2

    .line 842
    :cond_0
    new-instance v9, Landroid/support/v4/app/c$a;

    invoke-direct {v9}, Landroid/support/v4/app/c$a;-><init>()V

    .line 843
    const/4 v10, 0x3

    iput v10, v9, Landroid/support/v4/app/c$a;->a:I

    .line 844
    iput-object v1, v9, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    .line 845
    iget v10, v0, Landroid/support/v4/app/c$a;->c:I

    iput v10, v9, Landroid/support/v4/app/c$a;->c:I

    .line 846
    iget v10, v0, Landroid/support/v4/app/c$a;->e:I

    iput v10, v9, Landroid/support/v4/app/c$a;->e:I

    .line 847
    iget v10, v0, Landroid/support/v4/app/c$a;->d:I

    iput v10, v9, Landroid/support/v4/app/c$a;->d:I

    .line 848
    iget v10, v0, Landroid/support/v4/app/c$a;->f:I

    iput v10, v9, Landroid/support/v4/app/c$a;->f:I

    .line 849
    iget-object v10, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 850
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 851
    add-int/lit8 v1, v5, 0x1

    move v11, v4

    move v4, v1

    move v1, v11

    goto :goto_3

    .line 855
    :cond_1
    if-eqz v4, :cond_2

    .line 856
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 857
    add-int/lit8 v1, v5, -0x1

    goto :goto_1

    .line 859
    :cond_2
    iput v3, v0, Landroid/support/v4/app/c$a;->a:I

    .line 860
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_1

    .line 866
    :cond_3
    return-void

    :cond_4
    move v1, v4

    move v4, v5

    goto :goto_3

    .line 823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method final a(Z)V
    .locals 5

    .prologue
    .line 770
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 771
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 772
    iget-object v2, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    .line 773
    iget v3, p0, Landroid/support/v4/app/c;->h:I

    invoke-static {v3}, Landroid/support/v4/app/n;->c(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/c;->i:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/h;->a(II)V

    .line 774
    iget v3, v0, Landroid/support/v4/app/c$a;->a:I

    packed-switch v3, :pswitch_data_0

    .line 800
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    :pswitch_1
    iget v3, v0, Landroid/support/v4/app/c$a;->f:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/h;->b(I)V

    .line 777
    iget-object v3, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/n;->d(Landroid/support/v4/app/h;)V

    .line 802
    :goto_1
    iget-boolean v3, p0, Landroid/support/v4/app/c;->u:Z

    if-nez v3, :cond_0

    iget v0, v0, Landroid/support/v4/app/c$a;->a:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 803
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;)V

    .line 770
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 780
    :pswitch_2
    iget v3, v0, Landroid/support/v4/app/c$a;->e:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/h;->b(I)V

    .line 781
    iget-object v3, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Z)V

    goto :goto_1

    .line 784
    :pswitch_3
    iget v3, v0, Landroid/support/v4/app/c$a;->e:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/h;->b(I)V

    .line 785
    invoke-static {v2}, Landroid/support/v4/app/n;->f(Landroid/support/v4/app/h;)V

    goto :goto_1

    .line 788
    :pswitch_4
    iget v3, v0, Landroid/support/v4/app/c$a;->f:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/h;->b(I)V

    .line 789
    invoke-static {v2}, Landroid/support/v4/app/n;->e(Landroid/support/v4/app/h;)V

    goto :goto_1

    .line 792
    :pswitch_5
    iget v3, v0, Landroid/support/v4/app/c$a;->e:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/h;->b(I)V

    .line 793
    iget-object v3, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/n;->h(Landroid/support/v4/app/h;)V

    goto :goto_1

    .line 796
    :pswitch_6
    iget v3, v0, Landroid/support/v4/app/c$a;->f:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/h;->b(I)V

    .line 797
    iget-object v3, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/n;->g(Landroid/support/v4/app/h;)V

    goto :goto_1

    .line 806
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/c;->u:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 807
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    iget-object v1, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    iget v1, v1, Landroid/support/v4/app/n;->m:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/n;->a(IZ)V

    .line 809
    :cond_2
    return-void

    .line 774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method final a(Ljava/util/ArrayList;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 689
    if-ne p3, p2, :cond_0

    move v0, v3

    .line 711
    :goto_0
    return v0

    .line 692
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 693
    const/4 v1, -0x1

    move v6, v3

    .line 694
    :goto_1
    if-ge v6, v7, :cond_4

    .line 695
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 696
    iget-object v0, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    iget v2, v0, Landroid/support/v4/app/h;->F:I

    .line 697
    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_5

    move v5, p2

    .line 699
    :goto_2
    if-ge v5, p3, :cond_3

    .line 700
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 701
    iget-object v1, v0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    .line 702
    :goto_3
    if-ge v4, v8, :cond_2

    .line 703
    iget-object v1, v0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c$a;

    .line 704
    iget-object v1, v1, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    iget v1, v1, Landroid/support/v4/app/h;->F:I

    if-ne v1, v2, :cond_1

    .line 705
    const/4 v0, 0x1

    goto :goto_0

    .line 702
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 699
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 694
    :goto_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v3

    .line 711
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 665
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_0

    .line 666
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Run: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    iget-boolean v0, p0, Landroid/support/v4/app/c;->j:Z

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    .line 4479
    iget-object v1, v0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    .line 4482
    :cond_1
    iget-object v1, v0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4483
    invoke-virtual {v0}, Landroid/support/v4/app/n;->i()V

    .line 674
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/c;->b(Z)I

    move-result v0

    return v0
.end method

.method public final b(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;
    .locals 2

    .prologue
    .line 421
    .line 3426
    if-nez p1, :cond_0

    .line 3427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3430
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/c;->a(ILandroid/support/v4/app/h;Ljava/lang/String;I)V

    .line 421
    return-object p0
.end method

.method public final b(Landroid/support/v4/app/h;)Landroid/support/v4/app/q;
    .locals 2

    .prologue
    .line 466
    new-instance v0, Landroid/support/v4/app/c$a;

    invoke-direct {v0}, Landroid/support/v4/app/c$a;-><init>()V

    .line 467
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/c$a;->a:I

    .line 468
    iput-object p1, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    .line 469
    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    .line 471
    return-object p0
.end method

.method final b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 877
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 878
    iget v2, v0, Landroid/support/v4/app/c$a;->a:I

    packed-switch v2, :pswitch_data_0

    .line 876
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 881
    :pswitch_1
    iget-object v0, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 885
    :pswitch_2
    iget-object v0, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 889
    :cond_0
    return-void

    .line 878
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method final b(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 678
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 679
    :goto_0
    if-ge v2, v3, :cond_1

    .line 680
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 681
    iget-object v0, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    iget v0, v0, Landroid/support/v4/app/h;->F:I

    if-ne v0, p1, :cond_0

    .line 682
    const/4 v0, 0x1

    .line 685
    :goto_1
    return v0

    .line 679
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 685
    goto :goto_1
.end method

.method public final c(Landroid/support/v4/app/h;)Landroid/support/v4/app/q;
    .locals 2

    .prologue
    .line 476
    new-instance v0, Landroid/support/v4/app/c$a;

    invoke-direct {v0}, Landroid/support/v4/app/c$a;-><init>()V

    .line 477
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/c$a;->a:I

    .line 478
    iput-object p1, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    .line 479
    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    .line 481
    return-object p0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 625
    .line 3554
    iget-boolean v0, p0, Landroid/support/v4/app/c;->j:Z

    if-eqz v0, :cond_0

    .line 3555
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3558
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c;->k:Z

    .line 626
    iget-object v1, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    .line 3980
    invoke-virtual {v1}, Landroid/support/v4/app/n;->e()V

    .line 3981
    iget-object v0, v1, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    invoke-interface {p0, v0, v2}, Landroid/support/v4/app/n$c;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3982
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/v4/app/n;->d:Z

    .line 3984
    :try_start_0
    iget-object v0, v1, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3986
    invoke-virtual {v1}, Landroid/support/v4/app/n;->f()V

    .line 3990
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/n;->h()V

    .line 627
    return-void

    .line 3986
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/support/v4/app/n;->f()V

    throw v0
.end method

.method final d()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 719
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 720
    :goto_0
    if-ge v1, v3, :cond_1

    .line 721
    iget-object v0, p0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 722
    iget-object v4, v0, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    .line 723
    iget v5, p0, Landroid/support/v4/app/c;->h:I

    iget v6, p0, Landroid/support/v4/app/c;->i:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/h;->a(II)V

    .line 724
    iget v5, v0, Landroid/support/v4/app/c$a;->a:I

    packed-switch v5, :pswitch_data_0

    .line 750
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :pswitch_1
    iget v5, v0, Landroid/support/v4/app/c$a;->c:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/h;->b(I)V

    .line 727
    iget-object v5, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v5, v4, v2}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Z)V

    .line 752
    :goto_1
    iget-boolean v5, p0, Landroid/support/v4/app/c;->u:Z

    if-nez v5, :cond_0

    iget v0, v0, Landroid/support/v4/app/c$a;->a:I

    if-eq v0, v7, :cond_0

    .line 753
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;)V

    .line 720
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 730
    :pswitch_2
    iget v5, v0, Landroid/support/v4/app/c$a;->d:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/h;->b(I)V

    .line 731
    iget-object v5, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/n;->d(Landroid/support/v4/app/h;)V

    goto :goto_1

    .line 734
    :pswitch_3
    iget v5, v0, Landroid/support/v4/app/c$a;->d:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/h;->b(I)V

    .line 735
    invoke-static {v4}, Landroid/support/v4/app/n;->e(Landroid/support/v4/app/h;)V

    goto :goto_1

    .line 738
    :pswitch_4
    iget v5, v0, Landroid/support/v4/app/c$a;->c:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/h;->b(I)V

    .line 739
    invoke-static {v4}, Landroid/support/v4/app/n;->f(Landroid/support/v4/app/h;)V

    goto :goto_1

    .line 742
    :pswitch_5
    iget v5, v0, Landroid/support/v4/app/c$a;->d:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/h;->b(I)V

    .line 743
    iget-object v5, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/n;->g(Landroid/support/v4/app/h;)V

    goto :goto_1

    .line 746
    :pswitch_6
    iget v5, v0, Landroid/support/v4/app/c$a;->c:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/h;->b(I)V

    .line 747
    iget-object v5, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/n;->h(Landroid/support/v4/app/h;)V

    goto :goto_1

    .line 756
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/c;->u:Z

    if-nez v0, :cond_2

    .line 758
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    iget-object v1, p0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    iget v1, v1, Landroid/support/v4/app/n;->m:I

    invoke-virtual {v0, v1, v7}, Landroid/support/v4/app/n;->a(IZ)V

    .line 760
    :cond_2
    return-void

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Landroid/support/v4/app/c;->n:I

    if-ltz v1, :cond_0

    .line 227
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v1, p0, Landroid/support/v4/app/c;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/c;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 231
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Landroid/support/v4/app/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
