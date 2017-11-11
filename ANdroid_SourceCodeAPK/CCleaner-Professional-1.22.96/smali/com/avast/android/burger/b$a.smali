.class public final Lcom/avast/android/burger/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/android/burger/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field B:Z

.field public C:Z

.field a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field h:I

.field public i:I

.field public j:I

.field public k:J

.field l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/String;

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/android/burger/internal/config/ABNTest;",
            ">;"
        }
    .end annotation
.end field

.field public q:J

.field public r:J

.field public s:Z

.field t:I

.field u:J

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field public y:Z

.field z:Lcom/avast/android/burger/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    const-string/jumbo v0, "http://analytics.ff.avast.com"

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->l:Ljava/lang/String;

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->s:Z

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->y:Z

    .line 851
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/avast/android/burger/b$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/avast/android/burger/b$a;)V
    .locals 2

    .prologue
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    const-string/jumbo v0, "http://analytics.ff.avast.com"

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->l:Ljava/lang/String;

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->s:Z

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->y:Z

    .line 898
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->a:Ljava/lang/String;

    .line 899
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->b:Ljava/lang/String;

    .line 900
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->c:Ljava/lang/String;

    .line 901
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->d:Ljava/lang/String;

    .line 902
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->o:Ljava/lang/String;

    .line 904
    iget v0, p1, Lcom/avast/android/burger/b$a;->e:I

    iput v0, p0, Lcom/avast/android/burger/b$a;->e:I

    .line 905
    iget v0, p1, Lcom/avast/android/burger/b$a;->f:I

    iput v0, p0, Lcom/avast/android/burger/b$a;->f:I

    .line 906
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->g:Ljava/lang/String;

    .line 907
    iget v0, p1, Lcom/avast/android/burger/b$a;->h:I

    iput v0, p0, Lcom/avast/android/burger/b$a;->h:I

    .line 908
    iget v0, p1, Lcom/avast/android/burger/b$a;->i:I

    iput v0, p0, Lcom/avast/android/burger/b$a;->i:I

    .line 909
    iget v0, p1, Lcom/avast/android/burger/b$a;->j:I

    iput v0, p0, Lcom/avast/android/burger/b$a;->j:I

    .line 910
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->l:Ljava/lang/String;

    .line 911
    iget-wide v0, p1, Lcom/avast/android/burger/b$a;->k:J

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->k:J

    .line 912
    iget v0, p1, Lcom/avast/android/burger/b$a;->m:I

    iput v0, p0, Lcom/avast/android/burger/b$a;->m:I

    .line 913
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->n:Ljava/util/ArrayList;

    .line 918
    :goto_0
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->p:Ljava/util/List;

    if-nez v0, :cond_1

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->p:Ljava/util/List;

    .line 923
    :goto_1
    iget-wide v0, p1, Lcom/avast/android/burger/b$a;->q:J

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->q:J

    .line 924
    iget-wide v0, p1, Lcom/avast/android/burger/b$a;->r:J

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->r:J

    .line 925
    iget-boolean v0, p1, Lcom/avast/android/burger/b$a;->s:Z

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->s:Z

    .line 926
    iget v0, p1, Lcom/avast/android/burger/b$a;->t:I

    iput v0, p0, Lcom/avast/android/burger/b$a;->t:I

    .line 927
    iget-wide v0, p1, Lcom/avast/android/burger/b$a;->u:J

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->u:J

    .line 928
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->v:Ljava/lang/String;

    .line 929
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->w:Ljava/lang/String;

    .line 930
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->x:Ljava/lang/String;

    .line 931
    iget-boolean v0, p1, Lcom/avast/android/burger/b$a;->y:Z

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->y:Z

    .line 932
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->z:Lcom/avast/android/burger/c;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->z:Lcom/avast/android/burger/c;

    .line 933
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->A:Ljava/lang/String;

    .line 934
    iget-boolean v0, p1, Lcom/avast/android/burger/b$a;->B:Z

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->B:Z

    .line 935
    iget-boolean v0, p1, Lcom/avast/android/burger/b$a;->C:Z

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->C:Z

    .line 936
    return-void

    .line 916
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/avast/android/burger/b$a;->n:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->n:Ljava/util/ArrayList;

    goto :goto_0

    .line 921
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/avast/android/burger/b$a;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->p:Ljava/util/List;

    goto :goto_1
.end method

.method private constructor <init>(Lcom/avast/android/burger/b;)V
    .locals 2

    .prologue
    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    const-string/jumbo v0, "http://analytics.ff.avast.com"

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->l:Ljava/lang/String;

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->s:Z

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->y:Z

    .line 859
    invoke-static {p1}, Lcom/avast/android/burger/b;->a(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->a:Ljava/lang/String;

    .line 860
    invoke-static {p1}, Lcom/avast/android/burger/b;->b(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->b:Ljava/lang/String;

    .line 861
    invoke-static {p1}, Lcom/avast/android/burger/b;->c(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->c:Ljava/lang/String;

    .line 862
    invoke-static {p1}, Lcom/avast/android/burger/b;->d(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->d:Ljava/lang/String;

    .line 863
    invoke-static {p1}, Lcom/avast/android/burger/b;->e(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->o:Ljava/lang/String;

    .line 865
    invoke-static {p1}, Lcom/avast/android/burger/b;->f(Lcom/avast/android/burger/b;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/burger/b$a;->e:I

    .line 866
    invoke-static {p1}, Lcom/avast/android/burger/b;->g(Lcom/avast/android/burger/b;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/burger/b$a;->f:I

    .line 867
    invoke-static {p1}, Lcom/avast/android/burger/b;->h(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->g:Ljava/lang/String;

    .line 868
    invoke-static {p1}, Lcom/avast/android/burger/b;->i(Lcom/avast/android/burger/b;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/burger/b$a;->h:I

    .line 869
    invoke-static {p1}, Lcom/avast/android/burger/b;->j(Lcom/avast/android/burger/b;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/burger/b$a;->i:I

    .line 871
    invoke-static {p1}, Lcom/avast/android/burger/b;->k(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->l:Ljava/lang/String;

    .line 872
    invoke-static {p1}, Lcom/avast/android/burger/b;->l(Lcom/avast/android/burger/b;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/burger/b$a;->j:I

    .line 873
    invoke-static {p1}, Lcom/avast/android/burger/b;->m(Lcom/avast/android/burger/b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->k:J

    .line 874
    invoke-static {p1}, Lcom/avast/android/burger/b;->n(Lcom/avast/android/burger/b;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/burger/b$a;->m:I

    .line 875
    invoke-static {p1}, Lcom/avast/android/burger/b;->o(Lcom/avast/android/burger/b;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->n:Ljava/util/ArrayList;

    .line 876
    invoke-static {p1}, Lcom/avast/android/burger/b;->p(Lcom/avast/android/burger/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->p:Ljava/util/List;

    .line 877
    invoke-static {p1}, Lcom/avast/android/burger/b;->q(Lcom/avast/android/burger/b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->q:J

    .line 878
    invoke-static {p1}, Lcom/avast/android/burger/b;->r(Lcom/avast/android/burger/b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->r:J

    .line 879
    invoke-static {p1}, Lcom/avast/android/burger/b;->s(Lcom/avast/android/burger/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->s:Z

    .line 880
    invoke-static {p1}, Lcom/avast/android/burger/b;->t(Lcom/avast/android/burger/b;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/burger/b$a;->t:I

    .line 881
    invoke-static {p1}, Lcom/avast/android/burger/b;->u(Lcom/avast/android/burger/b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->u:J

    .line 882
    invoke-static {p1}, Lcom/avast/android/burger/b;->v(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->v:Ljava/lang/String;

    .line 883
    invoke-static {p1}, Lcom/avast/android/burger/b;->w(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->w:Ljava/lang/String;

    .line 884
    invoke-static {p1}, Lcom/avast/android/burger/b;->x(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->x:Ljava/lang/String;

    .line 885
    invoke-static {p1}, Lcom/avast/android/burger/b;->y(Lcom/avast/android/burger/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->y:Z

    .line 886
    invoke-static {p1}, Lcom/avast/android/burger/b;->z(Lcom/avast/android/burger/b;)Lcom/avast/android/burger/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->z:Lcom/avast/android/burger/c;

    .line 887
    invoke-static {p1}, Lcom/avast/android/burger/b;->A(Lcom/avast/android/burger/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->A:Ljava/lang/String;

    .line 888
    invoke-static {p1}, Lcom/avast/android/burger/b;->B(Lcom/avast/android/burger/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->B:Z

    .line 889
    invoke-static {p1}, Lcom/avast/android/burger/b;->C(Lcom/avast/android/burger/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/burger/b$a;->C:Z

    .line 890
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/burger/b;B)V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0, p1}, Lcom/avast/android/burger/b$a;-><init>(Lcom/avast/android/burger/b;)V

    return-void
.end method

.method private b()Lcom/avast/android/burger/b;
    .locals 5

    .prologue
    const/16 v4, 0x1f4

    const-wide/16 v2, 0x0

    .line 1322
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/burger/b$a;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    iget-object v0, p0, Lcom/avast/android/burger/b$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Profile ID is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "GUID null or in invalid format"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/avast/android/burger/b$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/burger/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 1336
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/burger/b$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1343
    :cond_1
    iget v0, p0, Lcom/avast/android/burger/b$a;->e:I

    if-gez v0, :cond_2

    .line 1344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Product Code is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1337
    :catch_1
    move-exception v0

    .line 1338
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "AUID in invalid format"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1347
    :cond_2
    iget v0, p0, Lcom/avast/android/burger/b$a;->f:I

    if-gtz v0, :cond_3

    .line 1348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Product EventType Prefix is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1352
    :cond_3
    iget-object v0, p0, Lcom/avast/android/burger/b$a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Product Version is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    :cond_4
    iget-wide v0, p0, Lcom/avast/android/burger/b$a;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 1356
    sget-wide v0, Lcom/avast/android/burger/b;->a:J

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->k:J

    .line 1358
    :cond_5
    iget v0, p0, Lcom/avast/android/burger/b$a;->m:I

    if-nez v0, :cond_6

    .line 1359
    iput v4, p0, Lcom/avast/android/burger/b$a;->m:I

    .line 1361
    :cond_6
    iget v0, p0, Lcom/avast/android/burger/b$a;->j:I

    if-nez v0, :cond_7

    .line 1362
    iput v4, p0, Lcom/avast/android/burger/b$a;->j:I

    .line 1364
    :cond_7
    iget-object v0, p0, Lcom/avast/android/burger/b$a;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 1365
    invoke-static {}, Lcom/avast/android/burger/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->n:Ljava/util/ArrayList;

    .line 1367
    :cond_8
    iget-wide v0, p0, Lcom/avast/android/burger/b$a;->q:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 1368
    sget-wide v0, Lcom/avast/android/burger/b;->b:J

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->q:J

    .line 1370
    :cond_9
    iget-wide v0, p0, Lcom/avast/android/burger/b$a;->u:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1371
    sget-wide v0, Lcom/avast/android/burger/b;->c:J

    iput-wide v0, p0, Lcom/avast/android/burger/b$a;->u:J

    .line 1373
    :cond_a
    new-instance v0, Lcom/avast/android/burger/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/burger/b;-><init>(Lcom/avast/android/burger/b$a;B)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Lcom/avast/android/burger/b$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/avast/android/burger/b$a;"
        }
    .end annotation

    .prologue
    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/burger/b$a;->p:Ljava/util/List;

    .line 1115
    if-nez p1, :cond_1

    .line 1126
    :cond_0
    return-object p0

    .line 1118
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 1119
    if-eqz v0, :cond_2

    .line 1122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1123
    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1124
    iget-object v0, p0, Lcom/avast/android/burger/b$a;->p:Ljava/util/List;

    sget-object v3, Lcom/avast/android/burger/internal/config/ABNTest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a()Lcom/avast/android/burger/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1308
    new-instance v0, Lcom/avast/android/burger/b$a;

    invoke-direct {v0, p0}, Lcom/avast/android/burger/b$a;-><init>(Lcom/avast/android/burger/b$a;)V

    .line 1309
    invoke-direct {v0}, Lcom/avast/android/burger/b$a;->b()Lcom/avast/android/burger/b;

    move-result-object v0

    return-object v0
.end method
